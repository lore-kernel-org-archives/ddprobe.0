Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F4CE3D60
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 18:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651083598;
	h=To:Subject:From:Message-Id:Date;
	bh=Lfd0Hfyfo8MrhpA8ohWCTn4jiRN2sQK4cZxvbBF+J/U=;
	b=gFESwyTXESmQjVZHVV4vxn8uAjdoNZVEytp6P/Yl6o4ANbpa8NFzVhlj+AFhGg4W
	mTgDtOIbj5QtwMxmHOdir4UHdAPhNgv5RozBeQ1BRKe+sywMVDDqpvt9j82ilFE/kFQ
	uxWxHHMLpCX2gjOFX/9LEqchgzK8jffiQjgBCiaQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651083598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lfd0Hfyfo8MrhpA8ohWCTn4jiRN2sQK4cZxvbBF+J/U=;
	b=jBqTvCcm8qqOXP+sjNN1SdMynj+poTlPoFk2Ji/JbOHZGjdPZmbtSex8h29zi8/7
	l4bRdig36VVcfIQsxmV+JPkE8BqKKFFcitf2X8xq2hNJblR3J3nvmMF+b2U1O08b8s3
	dJEec4sPlgcR9DdlCp/hLnjJQuYVIGCvWAHrHjMs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806c4059cb-9a8d8afa-a777-4aed-94ad-9903cd4f6ea4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97596f8a91dea3120b1741dfc16b4e6a58422e988a334e6cd7e7b7965807d249
Date: Wed, 27 Apr 2022 18:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651083598
