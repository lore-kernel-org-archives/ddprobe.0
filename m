Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1602D7E9
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 04:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658120212;
	h=To:Subject:From:Message-Id:Date;
	bh=Q2871MeK7xWpkkOouP/EdbijF6X5bJVkm6IoRmJ4MOU=;
	b=FTYqC1tvzFupIqbS3UR3cX0yrWi7l9LEpNJN2oGVFTq/jLFXMi00z61SoTl+1hVf
	LDpUuMzfF3hxwMWfUec+0tAiC0nlA6tjmGwue7lOnyilbNcxmwr0F5anz4mzzvL24g6
	q2lUuEV90iYQYZc1I6/9u+BPh/fksTJcPUllxMNM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658120212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q2871MeK7xWpkkOouP/EdbijF6X5bJVkm6IoRmJ4MOU=;
	b=J3nPX9by0wd6wqBS4pJ/gP0sEFR8ibwnS1F/wcALRONBtM1oTVGH5bpsrapTVk69
	MaXeNan/xyvscghL/ZYPszBCmPZ5/NxTVGlSngVQbqL4D3F3o2VbLsVHNiCP+cLJixD
	HiRf0dDE7uP5+ei9SQN0u9TI2VLwadrQN0/e6Hds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820faa8f4c-f443b6c9-8ad2-412f-b829-3ca672d68ee7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8eea1388505dccd56ff5c53a4fefdb4f490c30f42ff9ca983e712a93346ec3d8
Date: Mon, 18 Jul 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658120212
