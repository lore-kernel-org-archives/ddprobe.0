Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0519362
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 07:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657956412;
	h=To:Subject:From:Message-Id:Date;
	bh=vQRryBjPYGM2/JqyL+3RJYNKO0aWHpk51R69KgS7AIc=;
	b=Xfs8Z4ds4DGrDKvD0mQsgEuuvqgrpqCAdOKPX4ZevaQzS61Js0TpSUb4CJoBbkOW
	9v3UUle0L+nE9UUdEJ686j5rciLB35s4TQdUKZUOnELmiCFzj+erDuVjDoWanuypt+u
	1HAYgHhMKrxheUWj6NeIhHrOB20ruEfYTDlStQpE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657956412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vQRryBjPYGM2/JqyL+3RJYNKO0aWHpk51R69KgS7AIc=;
	b=PJ4KBcyVQgpcKeljBOKCUu/H6o0xWOYBhRu1rsjPZO9GW12zMwztUtrNzpZoWlp+
	jJivsOUJyv6b5fWIdnCP8PCc9nvx65iuJ0tq5IrNz1+HIAmsaHd1f2t4ENn1lE97KNI
	Saykv2YTLUuDzooIojTBtc8u3rvn+lP/TnqEnkDo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018205e72bbc-ee654707-c167-4f08-bb1d-adfbb2a59f49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 311c922ec466f0556780eddd47c0d8f0771bb4188df68f01bef68ba4b9ce32dc
Date: Sat, 16 Jul 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657956412
