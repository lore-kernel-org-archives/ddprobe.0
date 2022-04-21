Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E89CC1FBF
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 22:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650580738;
	h=To:Subject:From:Message-Id:Date;
	bh=VkFyuLRdXSKHZuiJR+snHoqut/UqucruFLq5jKyCuFk=;
	b=li5FGm4Sqm4pTzNi/7WIpxPR82gQeaDU8TfLz+YOEyPfj/6CVlzbXOhUKdtCjeMh
	oKrQ6y7aVU9maSQXjAEKJ2XuHmok7VWRGVuhnQuaukq8BHCJ6LSS5PqtjIOFhQ8HQb4
	lCfcyjCuaXW1RkL2iBObPX/D1NRWdTSrgjnMLyUQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650580738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VkFyuLRdXSKHZuiJR+snHoqut/UqucruFLq5jKyCuFk=;
	b=K5CcIhPwJuzrYY1571DBczYX/a/z1bDByvUWwHM/OqoPL4f5tX6YDLNfYVPetLeK
	u8Rhn3PYcd5I9cPVRqPUzjNwYe6vPi81GSOKHUHn829pRbeGeYH3Ozw5K62JiHr4YDQ
	NG9q8RHKWu1f8dSfX51K9MKK2CnpMD2kJ3u7bgAE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804e4750d2-91c5fb32-b8bf-4e98-b7d0-48b11ee49cd6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 484776155d90f66bd4abc22c5d6abab3725d930385d3895e2af6f0ed68f47ccf
Date: Thu, 21 Apr 2022 22:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650580738
