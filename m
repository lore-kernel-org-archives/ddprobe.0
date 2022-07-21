Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16B792CA8
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 12:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658408212;
	h=To:Subject:From:Message-Id:Date;
	bh=anAQLxThrMfMzR4aZEtqU93dl+JlBOMF02w8L7PAq+s=;
	b=DhXbgVOD0DLGMDmnMo7RFlT9aEmNC/NIz/L/tJVLF0QD0xuf1dKHEiLH8Vz4H2ao
	oiPwEgKdEnM5YTLntcG8eTTMK26YOSVevd5oeu8/zgq6AZAed9kSt9n4ZLjLHA8b22o
	obsO1Rwib4wHDgV5hzmRFqSLi0CS+vP02+FFYN00=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658408212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=anAQLxThrMfMzR4aZEtqU93dl+JlBOMF02w8L7PAq+s=;
	b=Ihf6g42MeF9uOMObJrcxRc8SPiloaDIdWtBadM2SUZ2AHvDrPm878hhkXnUqne1S
	5PLrK5LLVbycFb7EzReCcGGE8Y4MX8kUUbD0xI85ZBV96BEH5DRaMdpDHwLgRpFhmdh
	U+/pht1xYgrQ2+Kt1GFZaPWRd0Dn54NRUnU7UAXM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018220d51768-d7e65437-d32b-4c6c-953d-df471d378903-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77a4f54bc9a47400538abf20e57664d3b98c0df30c4b01913deb4c061f546211
Date: Thu, 21 Jul 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658408212
