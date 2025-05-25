Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3595D13A265
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748192394; cv=none; b=LTTlv1yW5bRwKmaNjJBGCk6qbXc+Znk8z0BTNERJxVYAhy7ixf7iUlmb/+nhniwy+WHtUzO/sH8SUBZ37xmipsnYEv8Ui2ThTNwnbUQLbi0TLckHRfr7EtwlgSh/+FWgKvVqqh2jca7IX8xyZ5FxBSMLsZl0yjqqDk/iGax0dzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748192394; c=relaxed/simple;
	bh=Axmah2ATnr3cGqtIJrwJJ90xeQvpgvUrgHtdFtSSvMY=;
	h=To:Subject:From:Message-Id:Date; b=VlZLp6hIn9cIj/69H1eFmgp6dU/cJsr8qA6AAcsTXHlCqV6GIZWoYsy5s6K8iSKbf71v/lSeWtksIxveWzsADom7SYMDf/I9CGpQFl5OM/nVRupdwSrBU7MEVlMMVvnmzDH0iX//vtYP3JxqFKVS1C/6aQsRcvYfInzswgpsKdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTEAbw+N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTEAbw+N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CF0C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748192393;
	bh=Axmah2ATnr3cGqtIJrwJJ90xeQvpgvUrgHtdFtSSvMY=;
	h=To:Subject:From:Date:From;
	b=LTEAbw+Nj41TnAZ0FgtwypzrE7GJ/ijyuSNWiBi3yCceKV1IFzpHOl75WrbX5fCBj
	 JA7WgfMDi5U4BYlrxlE+1sgbxE7LXH47NwnlTedYayFnQ8HC0sUysQXCJu/a23yqWL
	 irsfruvnOCnTPFmvrjMD9IQiem7pComPLknGVJPMCGy8wABFAWRQ1+l6t/FzWmP+7w
	 nDZOIfl9HykUAgyV2bdfx+C7rVPaFewDbJpKop6CEA6SbDV9EU+MBQOoB2zeyiiFWS
	 O5RdDikCWUDGKs5SR9jh6XLdUSEw6HVFbq3+W2b/0UJWPXW1JvxHy7C5pqYL2JsVJF
	 AtOOszZXkvHIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957B8C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174819239358.5143.7061991596220820099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6490192ea976f8926e3e94e987aceccdeb4946ae0545b0377f013a4462837e8f
Date: Sun, 25 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748192393
