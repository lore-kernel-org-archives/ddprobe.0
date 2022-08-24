Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81CB710E6
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661314252;
	h=To:Subject:From:Message-Id:Date;
	bh=quekoqsWllfN4FqAxm2UvrEO5qegXVJOUR33S7rYQr0=;
	b=LEA67E3dMFkKm/xsRDek2Kj4uu2pq4bfOf4F7wQmBN0oquSGJhswPqgsAyuEutRQ
	AdUuu8QjoAKJbZiT3BzKt4wWX1wf2dUjPlkmVhWk4/e0cCauCi2mPHzHtF1MxPJ33TX
	LANO7vtI0GmRk9n1TwTxVdirSggXicEvlBiRn3g4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661314252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=quekoqsWllfN4FqAxm2UvrEO5qegXVJOUR33S7rYQr0=;
	b=NGTCsH2SkYinaCE/zvdbOecFf5B5mcCC2rUTyPLAdVeDv/7EGPQhFlfRfDc0/mle
	dir1iX8WLwqsdGvLhks2qu6jStPq1jhcYbmOqV6oodb2HqBowMQqtMOtY+lPdgRNf5n
	OyZ8QOnONABkJtgjEedwGMofwgbBpAh8WscI77go=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ce0bbf27-d47556c5-aef0-493d-85be-b016ab34ded9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 977256f54e54035a9f7f7e772d238b1e873d3985756238a1fc54f21daf4c222a
Date: Wed, 24 Aug 2022 04:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661314252
