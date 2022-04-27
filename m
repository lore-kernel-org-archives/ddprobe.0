Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B3C621
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 02:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651025218;
	h=To:Subject:From:Message-Id:Date;
	bh=6noOw2lrk69Hk9V9qf87emkbfX2NQyH5z1v6U2pok/4=;
	b=f2+525EaKXuMlCsgMNQpmZc9Gh/dguzZQrqxvk2R5VMDNkwIl7Aj3AHJJk/B/Vek
	XAn28tbT7cme3ZJFDSQB3iTQzRFyoHFPPTkPO/OhNVwYyODsY+OhZ2krNn9jd+PH6iD
	vCsRqoNEZg71jFfmjkRPGHkuAbRLjPNUeTjxR9r4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651025218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6noOw2lrk69Hk9V9qf87emkbfX2NQyH5z1v6U2pok/4=;
	b=VKXxI5aZrJCpw72mh68XJOmGd/AGJuDjQyXJ4fX8IJlFBws9O1CNNH2+B5hBOIuR
	HLSLdoZ4QRyXTWaNdPwc/LRejxZ7zE4V0UcHwKkaLuGFhLlO5T4BtYh22d4aLPbjK+E
	iKTECQAI8e4j0eYA+JHY9DU2G5Yg2ujVKkeMXupM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018068c58ae2-16a4916d-ef4c-4d2b-a224-f77f5b8fb5f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 729543d05f0cb6ee9409fed2754380a99d2882634e55649c10f2d8ecb126d35c
Date: Wed, 27 Apr 2022 02:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651025218
