Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A4F03C13
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660924852;
	h=To:Subject:From:Message-Id:Date;
	bh=EYeN0vTVrYLatIaE2i9sOZoofUvaOK1U/nUBMY1bwP0=;
	b=FWBGyhKbQgG5i0S6mitdffG7UtlVvWUFA6OtR+BiY3s+qN4ve1Mf7DaYYvAdI7a+
	/tEEjk/lo93TPn3VzjMMfiKIzzYj7RgoiHT4KGvm1ekRoAOuJPOWrv3C6lG/5Dk1IDN
	qUCITezGmzpyMKbSg+y680zbJ2AWcMg3t01tI0V8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660924852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EYeN0vTVrYLatIaE2i9sOZoofUvaOK1U/nUBMY1bwP0=;
	b=WfNJPeykvy5N7PRnkimFvFanQ62uuT8Q5ApV14R4twYrG0Mcg9XLCGSlpc0EtLOs
	YiesY6Z9HvBZM7M5r6ePNzJbxgHNdZwGC1HHLpyHSLqJ+eNzQRqqeTgCvTePDb6CKhn
	6dpsg6vFHO0TpRVZ03HU6pa3DK2oEz0P297dd6jQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b6d5f96e-34148af9-404d-4aa8-9da1-d450fc6617ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5d8e3f4be5ebd079f4d71d16c6bee0797e1816960e7a55d38de3d30261feae0
Date: Fri, 19 Aug 2022 16:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660924852
