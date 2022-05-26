Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B02CEA9
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 00:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653523379;
	h=To:Subject:From:Message-Id:Date;
	bh=/PwPx/nSFnepfyjiUGIs8u6X5oDikLR1OAssqb+mvhY=;
	b=hPsnilSOp6DfeYJrGQGRPg9qawXbuTmFDfDomzoYh2U61TMcl0ocFTOlPyvJPMz4
	oc1rVS6aZYtoJsJh29phaujuGx6xRWZfCV507f16IbOMgcu66ou+QMrr3N1ULuJ8Y9N
	erli0H4ZK7XOucGorI9HiN6kH5QRyRcmbNN5OaDw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653523379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/PwPx/nSFnepfyjiUGIs8u6X5oDikLR1OAssqb+mvhY=;
	b=Nrlr+J/b+NK6qhqstJmEYSk44sh3MljQ+O4JIqhc7jJP8xEGbmL9IFKaMRHzuBvY
	2yrhev6zMWILEuEgrPSJVqIDbyV0XTntBo1KgPv9kKi8YzFGEV+ZsBqkWBMo+7+ZNuF
	Okhz4wzdB0x6jYK/mmgEPiw7APMmUKzrJhglOqgY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fdac7463-9b001825-860e-4559-a68f-740b13fe5012-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a39c3dff71f5338787c1c58cdde536f01923c86cd9a1d79fc24931406eb131d9
Date: Thu, 26 May 2022 00:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653523379
