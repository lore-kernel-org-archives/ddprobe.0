Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AEC2B644
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 01:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735347954; cv=none; b=CbY1PPqAEG34gSTZ0Dr89t3ruJHrcQw+sD+MWMu5UM4IyF8+CF/UXWutCF2IkBE50RWg/CmTtkCvCqjjPhn7d3LvnJ4Yafikv8wK2B3qNWmQxIWiyU65x5D/xfgmNrcEWzg71jbedekIz3dvem3lhL0SR8IFN3fQAak/KfOYfg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735347954; c=relaxed/simple;
	bh=cBwGCPloyBKRaOAMK3lJR2ykET+wUJrAWTikKM2pBEQ=;
	h=To:Subject:From:Message-Id:Date; b=OCCc5Mq7l3z/n816f8TM+xJyWVwfMi3wgU1JL3JOP0KuMKcKRJkq5hQYiDSom0k8BLKHKj8SgmFOdnJiGsTCcFDLmhsq5d2q++64RJP93tKvFGl2tdm+VfNsJkUTX7U1+G+27HdZRmyjU1egc4q28fQhHmfp+4+Ro9KN5l5yhXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sBqXuxh8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sBqXuxh8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4B6C4CED0
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735347953;
	bh=cBwGCPloyBKRaOAMK3lJR2ykET+wUJrAWTikKM2pBEQ=;
	h=To:Subject:From:Date:From;
	b=sBqXuxh8QDtk+YC9g+Ug9h3bbkIfLnkpT4xVVvsYx9fEH9LR+7Deii7UkM91FTdlv
	 7uJzEFqHIs0R7/xdK4DtJwB/mC1FH3i9CtlP0LL2Cm6c+UXnCWGubb447C8o2BN9ZS
	 rp5hMnM3G8Bpxf2oHmY2gGrMYaIkspRWOLVTd5F2gCXwzPSj7f4erK1o5dsPGFTOWi
	 VOxMAg4u4/khgSZ1G66vPc+lPq8tj5k2nOSUolN9nNXmflTl2HvYHclaTL+rSueDl4
	 hICal9rU19+Mu2NxDg0csR1sUc6Z2mjVi12TmL3QIMTuM7DrRJAuJUTTeP86E4kXmi
	 9hivlj0ss537w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96D1E7718B
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173534795363.17755.2642983853636252729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18791d041602e3483ca2dd1453fe267eb04bb18ab9b0d964eb2c617dd210572e
Date: Sat, 28 Dec 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735347953
