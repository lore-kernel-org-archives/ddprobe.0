Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220327A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 01:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653008999;
	h=To:Subject:From:Message-Id:Date;
	bh=EM8DwvYfMLUJjS1UWnAgWhz1tbwY5VGKcXaDJtuxRxI=;
	b=BOdxPFcdly71iwqq6i4T9/su3X/ZZbcIz4ypXnrQfDxDsjLUBgB7iuHfmVRiXvFr
	TIx2bWEBP9Cln3XDjw0h7M0Jdb8SxNvvcH4KcbXZR4F+8Msc8zFQzb8xMHM5ejGy6Io
	zH7AAnirxw9c75JSLeJtmwjL41H9wKz0yn4y5GLA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653008999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EM8DwvYfMLUJjS1UWnAgWhz1tbwY5VGKcXaDJtuxRxI=;
	b=fa55goMqDgAN3teCfcGGD5UpK2ZSreVMGOIJ/rtrnRLrm598jcIKH/pRkpa14l8Z
	Eowzb+nreBnLWOoY9Y8rcG3Hi/XdxGmvuS00c2jDP6G08Z5aMtWTgt8L0cKL54TZ0oQ
	lhiEGF5zsHcIArOBorPbNpwhZ1ESWEeUCVHWxbmk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180df03a35f-119f937d-61b3-4ffb-bce9-5e798cc2ab47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 638d47f6faae96fcf6152605d1a1f568be675359cc7cbac1a7f3e594a5e2d7d0
Date: Fri, 20 May 2022 01:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653008999
