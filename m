Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B907C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jun 2022 13:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656163612;
	h=To:Subject:From:Message-Id:Date;
	bh=oTUyVJD88AvesdKrXs/Ygrk7Zre7LUvKbTSMqDT1bkA=;
	b=V+rGuvrjduvRW0vMBxPTaDNSDBBNCTLv2pSo5lEd2wnlWbrb01+ELj3AF7BX80D5
	iVVedZJEAr/cfh4Sk6G3qOZJqFWgExAd9uiFe3wJ92+gECRIlC5zb4nf77217db9hAP
	Cw5B8TKy+XJ5GPbt6Ulr/xDoroTGf6nlqLra2G10=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656163612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oTUyVJD88AvesdKrXs/Ygrk7Zre7LUvKbTSMqDT1bkA=;
	b=kEowLn1+Bu26D0XXTa6ecyBZyKCUZcJ/E5mkL5Y7jdz+UT0d+nQc/hCT01q+EBHE
	642/8ojXZ+D/BFyJPCHrRdG5m3xWSFX+smeRKR1PkMOwSb7CLVhyLppGYJDs1UnGV7b
	UEQONwbREh2LfB+7cN8X6GVJ5/cliPouk8krEtcs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819b0b3693-5fb9c2b9-5ca6-4907-ba97-54b01aeac67c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3a97c704a51516481898a1962128fa867b1611994e88be8ec6be6c4aed93a01
Date: Sat, 25 Jun 2022 13:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656163612
