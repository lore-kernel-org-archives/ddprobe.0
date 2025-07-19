Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ECDF49625
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752965994; cv=none; b=R+e0TRfi5WKwXVGfXNuZ9bi3fx16AQudwrbXHVkBvttSC7Izkdk1AHM/6AizJZeOO/TDGyCjUl2lT0b/hysTrOH2PCz2k+0ISAqRGNXovB02xqW629/7I2JxADBwQYlBkjiCkNTdA37rjh7w4Q+sFJmSi95PAK3Qkr/uF+IFqIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752965994; c=relaxed/simple;
	bh=jIWyglVcEhBJPH4WBtldpky4Q4/Hl/rdFNd3PBdeIIk=;
	h=To:Subject:From:Message-Id:Date; b=ryBOhZOSbmGz1HjzUNvFJq7kI335qtEF43evy0+FFoXd0VDTmzUesf4KLgbLsq6QQqbsySHfm6qXj0quEPUG9Q6M1lCCEEnNWOktTlnMm3eNn2csFZmKGFrmKGSROPIJoCyniBTdc5FHWKakIOAfQtKErM4zCm99NGj3SkaCCQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HG9Ah3rK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HG9Ah3rK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9349C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752965993;
	bh=jIWyglVcEhBJPH4WBtldpky4Q4/Hl/rdFNd3PBdeIIk=;
	h=To:Subject:From:Date:From;
	b=HG9Ah3rKBHS0mvT7G90ZH7JgX5d8+d3mVqM2/PcIjwysJkzFpK2xqVww2zXbeZBev
	 yBn5t6aqJrffZ41SiZg1gXEHVNKA2UKAA4X65EtGaeiRq/Zw/JXmnlwhcrqrTGtigx
	 Q1hxQPrnRdr1UBfiyiIBLkwZXyiMPWuOYCyWIOFqKDs+Y75J6D1z3W91xxr+FdxCPs
	 E6IJU0+3I6Nx9SR+iWZKsoBs4wb0l9QFl8vnajViKw25nGud+gFoxlSC9vkOmO1Iws
	 MLB/Po9LeGcsUuEFBPsCIzTFSZqyd6qDsdhitNkwEmiWU7TPLIWmpzQjtQF2zbu3XW
	 EkU7CAOrHbb8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938C2C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175296599358.3995.8048460058189674556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2948ddfccf05edf0bdd13c7f03e9a5581ab60cddeaf52f17faf1f1a040285ace
Date: Sat, 19 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752965993
