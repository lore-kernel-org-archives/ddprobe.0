Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C6F2F33
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659823252;
	h=To:Subject:From:Message-Id:Date;
	bh=3GExDkrNzZzP5LG4MHyhSJAYW5SCpyqLbDgaCtudriE=;
	b=JqAchaCpe6UsSdTqQMXta3c2U+uOCY0vBEoYMP3Nj/L7QT9aCAkAp9Nu4b6DavGT
	PcA6BVcr1491k0XzWJXhiGSm3nLpLhpmXzIoyLpegIsNE4RIG3kSFXIk+uYpuEfB3Tt
	ZHT1lfxBdSEId6FaJy0oi1P8Y7g6Fe9pVTTpppBc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659823252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3GExDkrNzZzP5LG4MHyhSJAYW5SCpyqLbDgaCtudriE=;
	b=RaEVEzjMnFqb70UH0UawSP5J2qQ4p/bpK4wj+IFQCgZBYDfJvU1+7QQhBuYykGZx
	tH4GFh4VgJLaQxForZvLsyl0Mx8AurXGmgDpqsE6ryH9gbio4BcFgRF9TSbcGocXy9n
	EhwToTFqPQb//Nf26LUgf4uuxcV9+hna6CQ43x/g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182752ce459-aacbfdcb-96ba-4a11-8612-64e01da2b646-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c07f2f126a7c96a86afc85eb8b337b62ef854a873e3d7f7cc84ebf8716d1fa0
Date: Sat, 6 Aug 2022 22:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659823252
