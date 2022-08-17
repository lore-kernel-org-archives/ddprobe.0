Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69A537463
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660770652;
	h=To:Subject:From:Message-Id:Date;
	bh=CHTzdYmNtTsUZncvBhxfga7Jbi/49DmSwOxLKBJ9mjI=;
	b=d4aN0XAzKkASJd3knreaAVIwbh8ACtqwIeEh2AbhFxGDh1ohHlayddq8NZZ9SXWC
	/AyBMb90aNYPFTtl+OF5pNP7uhPaRhA0EhT5ki6a4wRJ8a0IfRPC1R9jRuFIBMVPMC3
	MgTvaTq25nf26LTc0UcGr6n3sU6YQauensXsux+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660770652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CHTzdYmNtTsUZncvBhxfga7Jbi/49DmSwOxLKBJ9mjI=;
	b=OwDjwYL5NiPm2AXd6AantWk7jQYGEGi7vxDJyCNgJoOCKnDyrWyO8eA18xV8l1p0
	GrrSSoepsXxr9PzA+7olWWVcsVFDyOBWviicwVyJSmlTgnVPwb/KiSznU1SHk9pKc1x
	5j/w1LCLIdsvX4Ubl5MSxopEWN4jjB4c1MN4s9ew=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ada51179-78fae1ba-8546-421c-a5b5-56b94ed272d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c0ea25c926b9588a2678f43ebb035a974578ec1464284327bb1b0cb8b89d3f3
Date: Wed, 17 Aug 2022 21:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660770652
