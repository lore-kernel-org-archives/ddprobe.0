Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4814C86353
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747514994; cv=none; b=pBM0TjNUbZBQKTfxCSyXcCNorQrrFWPPnxvacpJyk4n0ntpO/HFLtitHXx2APTlPyzxRpW0Mn6N/EXV8uS/UDejsWnnPC76FouyHUciRjB3OUaPS2CmJnYgnFoPH4cXW66FPi9tjy9hqpY95GiGY2dF9QI39xM72qMf+/1xTMTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747514994; c=relaxed/simple;
	bh=70Px29GbM2sqyT1x1FpasfLWRTDjT2u/iVSbH7fDyNY=;
	h=To:Subject:From:Message-Id:Date; b=LGJ9pfE7rFW4B25JhdBRnjJSqrMGVlEqVAL7XHoJV7/deKaHxJJp230GOGNYJ6U7nKvkYu1MQFVkrQfVBQSMKEP1zmhQMSuLr7Orz0Apg0i1CcF4BqWr0SF/zmfRWcmCvYrMXur0bMLOSjRSJCRCaQR8xkaNBkqEastdyd6+vg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4G2xtqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4G2xtqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F44C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747514993;
	bh=70Px29GbM2sqyT1x1FpasfLWRTDjT2u/iVSbH7fDyNY=;
	h=To:Subject:From:Date:From;
	b=J4G2xtqjHL4dOoDWUjUy1oyLCgI+PDqbA6aRtpRmxx5Jhh8hpBIGEZ+/IQBvSRU4R
	 +NJwemNhuU2N5DKstmRVHilQzhzrQuDkGrgf3p9uSC8cZRmmx7SDfhaBbUN0N2rqvL
	 YgycMOcMSQwjSxVqwd2Q2gOE4So3UfgvathdwaCq7MhS78gt9IYZibx6Ul09ticwpv
	 YL0KjvYUg9GWIl0dzM3rpdqIcqtw0ulY5wE9EZkhUT5nk6HNaj+J88+otXr1qpmgTC
	 aj5GCsbFEx/WI5b/sJ1Ng2FEeKKwfygx4BtNVzokMpf19oB3n4AgbUSU5Rv4jAn6EU
	 NofeKq1o3veKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F5A3C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174751499357.28422.10757799564246839614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 756ff979b29a8a8d7cf22973424d66ab4877f32ac85eb8231fb296c620281009
Date: Sat, 17 May 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747514993
