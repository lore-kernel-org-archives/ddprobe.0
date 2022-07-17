Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA0F7A
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 07:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658043412;
	h=To:Subject:From:Message-Id:Date;
	bh=Vx6/DFFbULLYon01pbMIw6pG6kz1SvGIlh2gPa4H+q4=;
	b=CcjWSTy6nt7IghHguF1VeJFY5cHMm+7a+S4ezIuHd1AC3DJM9jnjAMyU87m/eixN
	Vku0QaJOIA+YyYc6cwVCrSQlmVqqTe/8qaPyz4XEJqph5OfTRFysv69PQrdL+eu8dZP
	zcd3ToRQakl4pSxo1OAq3Z8OtmQBu6Z58kQjb+no=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658043412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Vx6/DFFbULLYon01pbMIw6pG6kz1SvGIlh2gPa4H+q4=;
	b=Ax5AdGTOjvdBfdXdb2CvsC9hShTZ462KKAEXTOfZXpbUuGQv4PZXUppsWMXt9Tco
	T8bOespDf1/VP8EIolDDH0GkCn96Tyo+c5FUXHjcmtypsTMIcKL8I4mHRArTVj5vj7H
	95Bwtl5dDb8LQx19auZIsVTyhZ4qmTku1hvLcAhg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820b16af63-53f8de2e-1608-4c54-8ac2-2379a0572826-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53880deb2b8c32fca51684dc4a10d621b5526c1ae34664e65d00fa4b62cd780f
Date: Sun, 17 Jul 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658043412
