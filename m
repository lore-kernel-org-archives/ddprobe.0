Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5274B320F
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661195452;
	h=To:Subject:From:Message-Id:Date;
	bh=NWW3F4rd8B0wbu8Hs9/WMUWH5ky1ZZhuxMeiEujHkaI=;
	b=NUzt0WTEJhvW39QelPw+Ja2N98VQfj1u5jIshFrj6+isODC+R06UWInDWa/6pU0p
	Z3OBzefwAh/sIoR2NScxNEgzaGaD59JeojRKTiQI4qaEaR0e4diaP8zgCgsyv3OGDer
	6jKSlY4jh875v+FQP/qIJv6a5QQaF30i8sgre3Fc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661195452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NWW3F4rd8B0wbu8Hs9/WMUWH5ky1ZZhuxMeiEujHkaI=;
	b=UxwsAVyJB7F7d+xnUTvgbDz8UwBd/8XT2rbmw6RAliHbmSH/aNJI3PANUTQQ05m0
	1NDjm9PkZyTTV3evutQB+bwEddmWA2ZAh+8FLyRKErlFkKh5bcMEPzQSrRkv60/6Mhk
	Auu00DeKdkKZ55uphI9pn4EHuuLPrKw3veWgIJjM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c6f700a6-b02dcf5a-49f7-4431-857f-2447ff92a2f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac7ca3528b505d6793766b0205bf8414c44d438b88f91ebadcfff8c6ce9de6b7
Date: Mon, 22 Aug 2022 19:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661195452
