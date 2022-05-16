Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4497C1361
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 16:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652719979;
	h=To:Subject:From:Message-Id:Date;
	bh=ixGYY4BWUqk8CmMM1MQyuTiPCMilTSP+C9PRxaR9q4c=;
	b=O6wl7mBg8R50ZsGKUYOoJpj16kmNuSm4wJAAQ1fXU2ZDc3BIY5l5flGjVWRYFJNc
	546HR3B5PCROo5gd8Je+jGPq25IISP8ltTyzEp0ha47JQg/j+5Hd0QIHvDTUNjJ+gAu
	ra766gLPtI+FrAEQe+0iiThZN4jF4Lc+uxhhj95A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652719979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ixGYY4BWUqk8CmMM1MQyuTiPCMilTSP+C9PRxaR9q4c=;
	b=iN8Xr0DxXeJppUhVxrNPH7R9PQt7ow27Hd3ZwjY6VYfO0w+1GmlaobZSUh7EHFp6
	1fSiTHzJLXmQZqVrkPXhCGRbl9PTadTy9CsaRDS4V7kFih9eaSs6CU0mBVVEU2i8sQI
	R030SmEIw19mKmIYxp7wyu97Pn8gOOSlmbAHkke8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cdc98ba2-bba28e27-e16f-4051-8d00-1693f4e04220-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18b6f71b3f8c6e33b654ecd63bf1ef2059aea84a31cbb3d61ff4171bc2cd9916
Date: Mon, 16 May 2022 16:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652719979
