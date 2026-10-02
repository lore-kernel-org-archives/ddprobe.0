Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A22817993
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790916034; cv=none; b=iQt4/ZvXNs/szCnzx2RP6JlxuE8RjaYb7OB3eobsUn2XuQu6l/Ekg62TSnhcxna82sQiPaJrDDAB7fTqGvL03sNmxl/OOICc+wg6VC1RvhAhzMKEqJjTcMjuUZP2+B/eic57SiWjRLDDCw98+h9mOoHD3DUbSPh3CymrS2XBYhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790916034; c=relaxed/simple;
	bh=mLqHjAhJoOzkI/TQruKA+5sdl0pErbfEP/xwThOCm0g=;
	h=To:Subject:From:Message-Id:Date; b=l+Ms/lWOONwYjW5FBq+hP4Xaz8V9dLdqY6Lx+uASILYWwcq97Y7L5/e+3KIhTAikvKYrBajp7RdVzWxsVUrMREDxhDfBp8vioSZYsikI/qiUue4X0K4L/PYQC8+fVsxT+fiif9zpMSv3E5s0TcmnVOwUuBqMF0en141qzUC3duU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJExlh6o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJExlh6o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF790C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790916033;
	bh=mLqHjAhJoOzkI/TQruKA+5sdl0pErbfEP/xwThOCm0g=;
	h=To:Subject:From:Date:From;
	b=SJExlh6oMARpXOwCqXuQ+PusfTJ7TPSYqwMoKqMIG9kiqrSrp3vEaeJ6VMA9G4vTn
	 sx7Jce8n3DO1i42NuYvSma03R07yKKoOotJ5Ig9+hyQgomFBbv0GmGU4uCuW25zFsJ
	 f/SuUgLb95i9STw/XhohpmajBMllwm+yKgzDI5EC7gMzZZWsRKL9EIMMlE/dA19nsm
	 ybi8OMRSQgnbxa517YMVesid7gtmme+zS5II1uCPv02U2NLdhC3eZSwbyDlTbEaZH5
	 fPFd3OZfODo55O7qguOORi3smVLvkkUo68jFBydyKtl9unwU+kH5Gxp38F1h/DP4aT
	 3jGdBHNEYhUUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF5ECA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179091603369.28649.9048551814029184878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93dbeff47dc7cff5c4e7c734eb712c3a2864891da323cbe5f10d1e892049bff6
Date: Fri, 02 Oct 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790916033
