Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB582D543E
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 05:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765775574; cv=none; b=pPBhI20a5OcK7xYy/ncdpvPuDst07JJzby29PmI74kQbFfQhtrEjDo+gcBzoz6++VAnuxnFxcazYaY8xcMV4D/l/UpE8c/YdK4Jlh7hHCBGjeoaqWNJjBdYFhO2w9fJzG1IzSYiaDEJp8t1Gdec3lqLLI+A2PluNHBhqgbqPXSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765775574; c=relaxed/simple;
	bh=4QiQ8bVDgbXuZJ/RqF67wgGXZCKscRWXwgdG+hU+axE=;
	h=To:Subject:From:Message-Id:Date; b=dlsMkJy7w4DLN0ll/i5fNGxLshcOEN/PFeblz/1ZLxIzNt9uVgLQay78yMgRXik0DXZsaHGtXqo4Ou3IEo/9XXfzpt1iTDhIGvBXknzI0cYyrHodufYLb6T89y3Hsti4Gij1FLXjTAqKgSGIG76jsTb+qpskm/xaRQyFjZpT6+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8lOGXoY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8lOGXoY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97BBC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765775573;
	bh=4QiQ8bVDgbXuZJ/RqF67wgGXZCKscRWXwgdG+hU+axE=;
	h=To:Subject:From:Date:From;
	b=V8lOGXoYDJ2aAcVSZisI3YwQ6bOp4nL5jC44kWxi5qAAdsxaImHryzjLJhZfHAq2x
	 9S37pQ4fegea7JnA8TnE0QwiAJUS9+1crVf923qOBP1+HpeGGD/akK3+T9bFazrUuW
	 NfYX8zGrZPuBOBn2TR+b4Irl3EBf54dYD/oP1Dp814JYpKDe2cw1XzRyUG+Aw3bN9i
	 WJCZRQ60n6WT9IaHOiwyjLwJax4RFPwV0aH9Rlpy0NGJGgG2j5raBawegGYcu/BDiC
	 UTh0DyjLodNlP3aB2pL39AIEa53MpUD8EMsCB09sQC/uhbOTxb1hmJIh9n8eK1zUlM
	 YFOj88HamX5Lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96887D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 05:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176577557358.386.12201585425102725818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5058eb7072d168042b69903e4fd72cb8599b67f7cf03b398144a5cfcd6e3354c
Date: Mon, 15 Dec 2025 05:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765775573
