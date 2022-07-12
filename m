Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D618F4414
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 15:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657639612;
	h=To:Subject:From:Message-Id:Date;
	bh=wZAwRsfXwgui6GWoMaucBb33kS1vlfBA2u0i2YI9C+s=;
	b=DBv5+Md0hFIObAxR2gPdJHkKqAfkWeNiJxbZspwoJ+5WMTnOzwd2O6xmigH4rhkR
	LAsk5rPE8rPPcFuHKazww/OJAD/rXkQ2ZhsSve8p8Ert1LUjVwAsVRk7WA51/gOsN9y
	lSEPE5ZRAtuSn789zBN/CaUAqqwY8cGBuvJ+DCkM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657639612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wZAwRsfXwgui6GWoMaucBb33kS1vlfBA2u0i2YI9C+s=;
	b=KUvhCE5XfdO2GHGnZEdwb3Yay6qQ8jBecJBy5TjzMkSeWv7Of4sAlK46OV3o1nxU
	0teW2+tcnhyFxZvgXbfs9EDF7YGOueGxz0jKH0LuMC7oDZLEwCkX0ra38SQjhcRxDp5
	oPPoz07E8pSCLjQnZAS8MlFY6FRNeUoYLKYDnkWQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f3052f71-e097e303-75bd-4533-8d68-d13af7f571ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec7f372f009613390ec1b92a8c04465bc2c447e549b9ad9bc46d89ec685e9f6f
Date: Tue, 12 Jul 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657639612
