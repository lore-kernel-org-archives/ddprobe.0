Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E44F1EA84
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742610594; cv=none; b=i3iLjOemw/PxnkXO7fBbeHXdw3jiMnXPLJ4pm0k9nYdF9DtQC8bKnerTT3vQ3xEi74Ie3+CbGSLa5zCOeekgoKn8ZzzYnclCWdLztdUSrkIgvX34tIfF6Y/mtFycOrpienGNsBpOy+H7D26Xhrv5Y3oD95wR5+ys5wNAIuixUXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742610594; c=relaxed/simple;
	bh=Jgav8hQEcdZCFj3rMq1xw1vqM02kBwxhWnGHT6ImKXA=;
	h=To:Subject:From:Message-Id:Date; b=u7dfr7DBWJnJz3hx+YXWTCOnngImeE8yt8oYGqwTxkmbR5OgBE7FKPD9IKdMjF2oJf9lmeT2DD/zuBOp1khqTshEUr5kUQFGxZKfIja9I6ZNQnfGTlihtmrRcvqD4Z08tpDfZQYEq6ncuVgCAW3MUVtYZchm/kqwIDWi8ULE9tQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvnFqeEh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvnFqeEh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5EAFC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742610593;
	bh=Jgav8hQEcdZCFj3rMq1xw1vqM02kBwxhWnGHT6ImKXA=;
	h=To:Subject:From:Date:From;
	b=nvnFqeEh48uQXFRQ+0UcyPO5f2FvhTM0kgq6W0mbT0kBgdETiWyOsg6ieCn7JPDXz
	 7MMwiqzLJmQgipi7U3DzO5bZVlIMhOBGAJG1wjeohGzemRFY4pccPwIOsj/VnO+KDA
	 FpYyoe536uOENkL7oX7ZBwU+wN06HRPHVfBQdEvlpaGWE0cXJ7ezMXCXEtL7r4uVKg
	 47CrA84viQMStp92cucSKO9l3wHPHohwJtYIxG3dIrIYjRzLa3fRwKQoXcWg7IEf4E
	 NRh8UFWJ1t5LZEmhQ45n+gVdEBEZbIkIeUHwvpRQUXd78xttXD9grdifroRDYU0IS+
	 37JzFa8sMFMsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 996C8C36001
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174261059360.3229.1397360675403252769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5c61bb5b31996a1699ffe2eeb21d87335467d89c5fed26dd1ab7fe336602383
Date: Sat, 22 Mar 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742610593
