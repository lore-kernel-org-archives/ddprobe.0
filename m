Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CAB3182BD
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743845996; cv=none; b=Nf+fDoflDm2D9Qb8we6Uif1cccbKl3SepLvhbACps9whXlbWh3JudEV7U0sbBU8nW9L3zv3R1da0RFrOlNVFynB/PhRHeImeWMpl73X5B1U1ohjHTLiFMZdLiBdIhGaQZQ9VjyaGoVgI7gjEoq9/pTgYd5iIRVs0/pwhlB9Sjs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743845996; c=relaxed/simple;
	bh=t/YhbL7LyOMYBXdPOUvh9GKwsnyI4h3uAmMb/5fSP0k=;
	h=To:Subject:From:Message-Id:Date; b=jvq2o2+/CoX2fNsGz5eukx0MWjWywDOVnYnE8MLs6nvAL7Rc4Iv4iEV/CpO3BF14RV0+PpfPP9iWP4tQhw7lXm2MEJ0xF7eBP2n5ap9t6J69JTeFBJai8JyP3nS2ThPWuuTApsdEj0BEXJcPY5eHhxCJKp0XmjUSab0KIvK1Bng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aX7AgWxF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aX7AgWxF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6A7FC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743845993;
	bh=t/YhbL7LyOMYBXdPOUvh9GKwsnyI4h3uAmMb/5fSP0k=;
	h=To:Subject:From:Date:From;
	b=aX7AgWxFttplAmjQYbCrgdq6Ue9ZPN8IDwEuD7IhmIzHOpYqdWtRKsxBaJs6p/FJ1
	 USeB0Zt8M5TpekEto1ne1ZcFOj5fAXD9N2M1Z41CoAFqHAgmeegOU6UEeNMy+y4V5J
	 yq2Vttj1NY+435LSbca05xyFMVNDk1V3X4ttyc75m7gZpqokLC/sFy0AZB7nOScaVK
	 Jg0wvjg6m7kn2y7SfzmSDVRJn1R2z4t9J2w+D75m9rejHCLeAKCy/FqMMZrbW5XCm+
	 1O18Ev07+yc4yQpmtOni9pAyQsiuozmBzMX9iXop3cxYWtfbVhfeVexciDFPGq/dRf
	 6DsePjN1b69fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA828C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174384599366.13383.6357860331851064331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9b3fa9593317fc949ad5309cdc29482a2a423d8112cbf2116cac947907f45b7
Date: Sat, 05 Apr 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743845993
