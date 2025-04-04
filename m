Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550932E62C0
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743745194; cv=none; b=mXbiUwHhL28qLvptsp4EEUWPwSceKHZb5pjdDlhBBmqbV6F7Vu0nmy6WDRdOF5VyZM2iJ/s1OmE/uXqzyqdmOtfXqZBx+mXXmaeb4phoXdopqlCBoOkSXlOE9LahYDamqVpi2dXxrLLU/9WONc1DGvYiGEUn6NMnkiv6e03EZbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743745194; c=relaxed/simple;
	bh=f6DJjQXXNw0egkT1CcScoEtcC4ED+awJJmloFHJwXss=;
	h=To:Subject:From:Message-Id:Date; b=PUEVN/28C/rFH85ZGRp8hprNXukGr/ImHy7MsGKnyTMvLYVHzm2u8zPRf6hJngYcAK5whSqbY3ypusEP0ZDLqjjLxo0iJ+Ds6HTy9DJWn4PTCCxaGd5Mt7hX0qpJDNwfDRc5kPTbAnsR31eAyeecjb38PlIVmQJXo+U/rwuJwy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a6jRhPN6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a6jRhPN6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E2BC4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743745193;
	bh=f6DJjQXXNw0egkT1CcScoEtcC4ED+awJJmloFHJwXss=;
	h=To:Subject:From:Date:From;
	b=a6jRhPN6i2B9z8dFwaDk5B4gPf/uj9H1aNIx2A6YQzcpFIYV9P7Kqmifn/8A7jLhN
	 qnfsWaWp3t7dTOrJGzc8Pvx8kD0mi6DSiuPzF4lKrJZGyR9H+u/0rKSMN6fuOFlLeu
	 LPad9xPElt+s7kXLaCsvzYz6CmJTgl9DFOSZ1AtfofHZfqr5RI1X+fhsKaobNHzvMs
	 JqsfAh2C0dOry+y1imQwqnWvL5r6njfdIZ+ukRVnnCD3A+ml3dvQ6oOVeEn0pSfgh6
	 wXzY1fnuUeEt0mwZweVMGy5jKyaXcLfLVdzCDnWmi4l5g7IKvJ7akp/EphH5C3m0Lv
	 07dQT6OEhNvmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A523BC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174374519360.16880.6512857358009004352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffff286b2a57e6cbfbf7973045e74997a8538f1d9550898120024079d2ed0145
Date: Fri, 04 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743745193
