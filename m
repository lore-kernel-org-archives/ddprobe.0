Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD5022FF22
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 17:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764351774; cv=none; b=tkcXoHV/P4yp9q9tcHTZ391aH3U8AwOkyUAzRg3hVLsKbjX3oW4JaSjagkMubmGd/XhiGDEDbfi1EAnR1gNnMfqtFqfIWuV+5mlpo51Y7+t/LiNxA32y9gguF6VQ0lKT2dSAdqiML0M4mh32Yb4ypJp0vJf+GEhV8dHGIKCthlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764351774; c=relaxed/simple;
	bh=0llPDV9UqCSjBiOAK/unGccbX1ONeRSJY+PBH56mthw=;
	h=To:Subject:From:Message-Id:Date; b=EGhiJjODPk4+Ov0s3tVoSUFo3OgZyI962VsUH5dr4iJcig0y1ybA7A1S7q5rFcFMxRmmXCYwxnJPMByJnrs/BSYMU3WEkwJof+pPbyzsvwREyWkdRUoEsRKM3pLLC4fUIX7O0J/k1fJRjNmAE7CDoDMwm7rS/O1DHw216mCFC3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khAo1JQ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khAo1JQ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37E0C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 17:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764351773;
	bh=0llPDV9UqCSjBiOAK/unGccbX1ONeRSJY+PBH56mthw=;
	h=To:Subject:From:Date:From;
	b=khAo1JQ5bHCTLvqG9/86Hnh++gG+jULqziaYQ+C3+T2UybkjT7D9wuYqG39lH1AEE
	 9J2WDHfgpc/9X/tvNgHPa6yuwy04Bv00QlP77dAc8s2NtfZCLuk7VDJjnICppS7JzV
	 PkjPYIoM3c0AkqyTlevr2H7Pmib6Rq+0lLSqom38s7PDbUyxDRkB8wXOup11nVQf8r
	 yNOnY6VXHxoyw2sPsplBG2GrABM+TJY84VkmKgUzFdOu6h3RDK/uAQf+UEBRgwU2me
	 /Bog9wJR4VkWNG770S084DokZLUgumQf52ex7pLf+94mUCpbp2h16ApDCr8MfOsNP0
	 5AvQPOGSF8BeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90187D116E2
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 17:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176435177358.14187.6236218012783790715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29058382c50788ec26673b5d9f4272ce70da9fd81d36cd057df6af85ec144b2c
Date: Fri, 28 Nov 2025 17:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764351773
