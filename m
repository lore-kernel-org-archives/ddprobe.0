Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154DFA21
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 15:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654962959;
	h=To:Subject:From:Message-Id:Date;
	bh=vOaDUF37BFgk9qvISPWtTPK3bIIIOW/y3sS6Zcz+qwA=;
	b=iEVc/1cRCLXFCDSsEIIFogMHTuGXIa3+Rw7M8ulBUtf4mG3jYnPic4Yo2n2PlY+B
	ZmKTgiTxdoqyWEavXnCnqzwEX4BjCEyAsKIPBlx5FYpdyF7wyGjlxpdVUhLNOUV1srC
	lkXYJ7PWbyipbQiIeVvGTFXReweMNCw/yrQPd1ms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654962959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vOaDUF37BFgk9qvISPWtTPK3bIIIOW/y3sS6Zcz+qwA=;
	b=ie8kPIIXYpuF++B3tmGeSE1Qbo/97oVwbT/z8tB7YTj/Gse/2P18K1kO+cVcESBM
	aQGGPsif0OcsSvg9i/pf+ZXuoK1E6OGkqjbQ+Y9HucD3g9+rPWTa/XjtcXx6tcAqvYH
	gjuVssBg9IjP/g8r33X+eNc6qsB+aSdKnnPxfsVo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181537ab35f-c3d033e0-4b86-4fe4-a065-8542686f9510-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 163aa85d81bddb192867044460973625978177bbd5bebfafd006688003158821
Date: Sat, 11 Jun 2022 15:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654962959
