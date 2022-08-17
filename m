Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A687463
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660768852;
	h=To:Subject:From:Message-Id:Date;
	bh=TjASOC4CGpFVqrBPcS5fWLstSZfy3/XT8NPk7gPSFco=;
	b=Cep4eZDjBzcYLFi2W2JuW7eMfqn8XNfAv61Fj0rJyyNd3AAasKqsAn8DDeI8Tjrq
	et4LEY7/6UqJ3gaKdsOI9yDnHn/2mMrjdhH5k7+3KaEok5OIvhdkpVbU5Ip3fjdwDZA
	Y1vQSqVUZFpe+DxEpGtIik9HHaqTm7B5tpue6v0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660768852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TjASOC4CGpFVqrBPcS5fWLstSZfy3/XT8NPk7gPSFco=;
	b=kBiGgaaTyNxsOW9S4MxPgFUOlBk0uIPL7zaUwUDeULw1UYSSbdPA/0//fHgIClbm
	+Jau6upTmzd9o7inJGaxNNEcA8wo01SukFDEBtoW7culScf1XgY661i1X7z8zno91Xm
	pdQhfbviFffyuJyIlNxEIBNAM4xxIF6i5QtpgKqU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ad899a7b-96ca4f86-4610-481c-9a0e-7d4fd57af0db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 878aa8800c3351713fa9c7140777ce86824cc5682a2cb5f82a37ed461de4ff15
Date: Wed, 17 Aug 2022 20:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660768852
