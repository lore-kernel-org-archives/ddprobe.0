Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9F1536D
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 02:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653273419;
	h=To:Subject:From:Message-Id:Date;
	bh=05aP8ROs+T7Al/u+FmxHEMHgl19WHaU+GSHL09CpYrU=;
	b=GS9NdG6KbgV79EvtzjfqIdHeJehUQNWGinCmARVQ0XU8G/n3aMUw3iEVkkRfHZFM
	aY22R7Fz4KSGt9Wk3CeZ5eP7XE0PuUz7cBaTjF+sYJpRr7ORUaksRrh8m7B9LvJ0Nsd
	eo7XnDXOd72+E9M1NOjAVjV/wy+X4Wdy13MTo2qQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653273419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=05aP8ROs+T7Al/u+FmxHEMHgl19WHaU+GSHL09CpYrU=;
	b=iLdFibmhFwJEW7pQCj2Lx1zPuJS4HjzuMetrG8I67Sg3G1rtyCC6PYBwpo5/2yOg
	8qqu96I35qcIG7IOqVxfPdn6DP/TasSfEmR/qzeRo/bcxgIplFT+52AmBMkZ0vCUBRX
	DURgvwZSSQR57TBoSqJuz7PAtjVM5hUzXNNUoD2s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180eec65de7-6d84d989-d445-4d6a-8781-deac9894e199-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ca1250f458a13eac2123efce595176e9feda6c4559679293823ce878dc41c84
Date: Mon, 23 May 2022 02:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653273419
