Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3095A4A3C
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769922234; cv=none; b=VHwuluAQjnu53ktxZ0Sxfj80uiiWJbkHWMpNgdYcffbje4NHEad9KdXie8AOwYp+Z07SibQKCgoCNbp7Jl1FPuRXzp86mc5CKPTN9hsNz8Ei2BRUal4UtrU2ByUzn5q3BJxjvDI6X5/Wo84yAQ9dB8oBjS/T/HHQYpj0f54kbRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769922234; c=relaxed/simple;
	bh=+R/n1YJigyZdEkxEFAHd6GioYpwwcRGho763NgXh0Go=;
	h=To:Subject:From:Message-Id:Date; b=Fagkq5sWBWAjGkNHPAhcsuqm2CaCR29ssqA+mNDoxnEHRNnMlA7Rq8PM6rWj/Vw2Gt6n2bPayRK0HW3ZsgWyYNUskBe2a6Fpy7H0w57skL6ddyA8pEVsisE1x2rxcCZLcchJuBB1WipEeEPRGss4f1ndouO1GvhimUhvc+8iLH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4A4Ri6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4A4Ri6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0466C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769922233;
	bh=+R/n1YJigyZdEkxEFAHd6GioYpwwcRGho763NgXh0Go=;
	h=To:Subject:From:Date:From;
	b=M4A4Ri6lTKCY0zrKXyYEv0hPrXaCuTVWqiJYI3auN4WFpIGKpGH4YSKSIeiVNi1NK
	 NYe4OZEjbjSjkbmPwOkuRJzzeHIp+v2D4f/wUrlsImrGF7JQWMGlaYMY3rxNpraFz2
	 64Zdu9U2MBcz7PBd/91hj+DEXc10I9Lh/kdCoGozfJ4NzIhDHF6E6x8jeFXFG1Jmsv
	 d9s3YQiBU9l+g7ifp248+sFjca5eSqby9cjoXne+LLWv/9EyLlcQePRj/a4f/CWC3G
	 3etFUuk4gLvuZIrZLpVT/KSg1zPanCs8E9C8OsQqgvYC/t8cQHQEciMaMi1SAlSGkC
	 fevNSqCmObPfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F1DFE7C710
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176992223362.13369.14587931768853948657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 309dc5d26953ec6f81564c220f5d1410f96d468bcac985c02b369713c1a6fc39
Date: Sun, 01 Feb 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769922233
