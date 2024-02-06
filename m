Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E358712F5B4
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 13:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707226097; cv=none; b=RmGW0c83rxADT9joMkmxwuw0kj3k1bjuheGgznyxkKw9nNdRtf/JAup+2cIHCuF4Bx6s31qKgaTwM5lNg5uUvkpmODyESyo4fsOzyTKiWRzDTr5Bw+xXu1DCgns/G6mU3svJRXmIEayeEP9QmO9QcumFe6N+bXeBers/9ji3jbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707226097; c=relaxed/simple;
	bh=jp+85ONq2Wus+E0IY/zzJ7er5X686f7OftoAp2qlT1A=;
	h=To:Subject:From:Message-Id:Date; b=LN5J9HwooLsabQSulwtu7lBIHIq/KTHkIiqillX47LRtGu6v7uA/2PL36Y5sDrIcLCN4MXiMn0Xa/Id380N5Y0NoGTSipvEdAVPbGUd294XgC7YUQnLTTu2pfdbMtCmZQsVgnOOlZ+NDRo6/9cqYC1k4idE/Zodp2X4BrP4xqeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUrJ0r/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUrJ0r/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86F70C433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 13:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707226096;
	bh=jp+85ONq2Wus+E0IY/zzJ7er5X686f7OftoAp2qlT1A=;
	h=To:Subject:From:Date:From;
	b=qUrJ0r/0GtAvVIn+iErOzqq7bg4rGQJqno+7zQmstRwNZiTfrftgCA6q64OU8wZDe
	 E8mNeyW/LrSA6Pny6NgfZzJsu+A6Kg0PpenNFalb6EmhvmCNKlN+LFP2d00izW7QuT
	 EO9hnl/mF3e0IRaAZWoKzOCCBUcTJzFKCDDbCHn5s9KYTCqILFBi9kT3/GbDL7aLSY
	 AqGWkriMfBk7xyWwcFOy72cxd+hGzGmGQOOj3ecEMYL+uNhzJt4Zrt8C+X9JW2Pa5D
	 D4CXQlUhNBw8Gvk4RC4N8+nCYqmX4g8nsJ/WlOwWiXgclAWdK0mgHkqwUtFzCLU5Ku
	 StWijk7/tfQMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68507C48297
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 13:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170722609641.7985.12100250534485153047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f95b81f056e07948e76bbdef7374990533de40dc84fe0ba8d6aebe83f010ea99
Date: Tue, 06 Feb 2024 13:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707226096
