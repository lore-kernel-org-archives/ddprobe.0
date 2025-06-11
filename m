Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5EC245027
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749652795; cv=none; b=qw/5eogqtsAzwR8Jf5WBAWrHykyuSSg6h8VICNBlEznrxU6LTmMQDN+GhIC+f6ouCqnGgoiBx3WXTPAVy+mbFQ5IjVuUsSK5AnWUEenVwlWFeomMF1RI8hgTBhNqU7WzfTb+pZmb8DpWyMLFPo7MML+MeCKOzhij19n54M/Ehx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749652795; c=relaxed/simple;
	bh=0thdfk7nM1hb2jMgJBIrX18bH034pzohOkESJEvSo3k=;
	h=To:Subject:From:Message-Id:Date; b=tUqGdONIj+QiRZWv3wOoxrbsQYJ316A6we1iOTvqbwrppYnunIhiL4VpzFIUNgKGdugTV+1iENlf5ox9zG/vGSY/opojb39kgOqGCHxI+B+JXXuaE5XJTEbKF3aaY7QuMzqOPMnv1e3Nk3X9jcnvFQfzurzhtvIFs8CZVSoMYrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1YLTgB0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1YLTgB0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C54C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749652793;
	bh=0thdfk7nM1hb2jMgJBIrX18bH034pzohOkESJEvSo3k=;
	h=To:Subject:From:Date:From;
	b=I1YLTgB0GsHjx8sjy7/kVSyjcyZ02Ufp774b2act7UWFcrsePUvEvGdKDsrjP/sw3
	 zM02VZmEDSu6XT60o5peyHl1q+sFBk+kzuMRySi9XBMV8qpww5ygv5Z9hH+MxUN2Mv
	 85m/UZtuMxsoxXC/oG0QYXWXJi7KUExcYQwQTVIgKCgMZTM6SbvYk4B0pqwvQ3nnKo
	 goil5q/y71MbF929ZYUpcjmtwvgU8gesdg4volPoCS6wR9FysEdDox/y2T+AwVnDeJ
	 jKhand+KNXqTCx3lIbWP1BgXrRlyAeWnSV7T0DYdY2xRBANr2F+Ke06X9sAvf6C8Z6
	 KJyIJbPQJltRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2DB4C678DC
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174965279365.10393.16191677082499497695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 140cc49ac34b1710c52dd7db6ca1a1753f4a50cde93f88a95451ea8df488dc0d
Date: Wed, 11 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749652793
