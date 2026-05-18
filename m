Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A6A3DCDB6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 07:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779088234; cv=none; b=myWD3IW5zzbMF/l5WSYZoXpyfPtWODZfjwZnh2NEakW437j4KYZzqJnRZfaTGtBf+ZaMW98/MgRXiqCeLtq5TAPvt2zNboM4pZUxRNT/b2TK+lCuO+bEmiXj26r2ZuE4BfORXzGK7pYCWDBzcYdSwc3FB9am33XJmJj37YTykJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779088234; c=relaxed/simple;
	bh=cnsGa0GCMu0ZBaavEm84mrViRlQPSoBbC4m9nFdJBZk=;
	h=To:Subject:From:Message-Id:Date; b=C1LfUHJgNq6R/XBU/2WcquSUQt/66qmzYa6qrXDwE1vASGA1jyNNbNbY5DuL8twhOz1/+d8Ua2HM/XNLJkj2uAXiQAV3tjb63+hDd4lC6qyyVXXHCCSUwgtjSXK6TolBq3Ob9mwVe7dp8HiHkiInIqZAOD7IcNlKijndYd4GO1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rK2Zy5e5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rK2Zy5e5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE207C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779088233;
	bh=cnsGa0GCMu0ZBaavEm84mrViRlQPSoBbC4m9nFdJBZk=;
	h=To:Subject:From:Date:From;
	b=rK2Zy5e5gxdfI4DJ7yKOuWEBAIErbGy5jefLb6QICMcWo+dWpawtfRlzAA82Yxzz6
	 FdEE/6gdrpSy+fkLCaXO19Ygn6TKuiQZOGEzq1oPT3xhqK+WmBeRwiTPqQfOImFfrk
	 QQJhZQma5QDpN0YWvA6/BXSc3Zr8Yg6WqAWI3EBJLerjWaE7vv54xym+O/l3/FYRt5
	 3/A2ECUBxWwc2dL7E54oWYR5+K9GQdwxRnCt06NjpsibfO+yyT8Zuf3ae4qdUZuiAY
	 kbXLHmEwF7WAjUzLb1KefJxrwvLWUsnG4Yd/MLdp15SC40ZtZ/cxwCrsrAF4Nl45pl
	 mR0dh5xcZkU8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB055CD4F4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177908823369.11118.2024387038301335863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b61e27fb1c3ae776fb91265acabd9d5547bbba51e0a7384069ba639eb931d811
Date: Mon, 18 May 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779088233
