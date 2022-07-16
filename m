Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0D51844
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 21:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658006212;
	h=To:Subject:From:Message-Id:Date;
	bh=AZfKwr3NvzdEIx0QohXECtP5I2Ecsp1uMTqIdz9SIaA=;
	b=deT7UWV0+6xdJ9U2G0YoWbk097Fndedn1BT8D2Y6jbCA96gHtUOpPMH2+q96fQNK
	K4+65aOH3UHjeRnkzWdRTxcCKYvNwA5UCMSvNLhyMo6h8LHQDZ9AjdCYMSH1eJ1OZee
	J00q5SfLVuqM3acz8UgF9+ZkEvBZWucFAl9zsEWc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658006212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AZfKwr3NvzdEIx0QohXECtP5I2Ecsp1uMTqIdz9SIaA=;
	b=V6LTpQfLeK+LEJQjYdrYq1F6mcvCwiYblZAxARMNZbxDXlhyH25OIleCDwVruYRw
	fW+/iWLiT59zPy5TAoaP92J+SARUw2igd0y5YFUuf2m7GF5gZKUmy7tsYjEJMqjC1st
	ON8aRtCHdMeATq0xEddQLUVsH4wQwtaUkzHYT8Fc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018208df0edb-a3cae0a3-91f4-4a84-8861-b47b44dde191-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68b6ba54ef06ac70154b7467495b2d34f310e14828e1591bede2d883164825a5
Date: Sat, 16 Jul 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658006212
