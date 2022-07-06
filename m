Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D0920FA
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 06:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657088812;
	h=To:Subject:From:Message-Id:Date;
	bh=VcExCOplhK4wo8PwwjI2Z8gzqlgpDbH0uHTMdQ6DmQE=;
	b=ZzxMLGTr7RSTYRV3JW9R2Nw7RvZyEQ4Av6LvxIz76t5GOSgn/sFttaQCtJ+2ykN9
	BsLpWfJZBpI3UqkkHZvWd/U2BTNUxB8dSH2bcO2pBMZT3HYoLxTB6P9BbNvAD0STjcb
	PkRZNHS4k1kHOdxLj+7QAusXFxs3CeIEIFFJHzFo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657088812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VcExCOplhK4wo8PwwjI2Z8gzqlgpDbH0uHTMdQ6DmQE=;
	b=kdqElk8knmtMlX/CqzoMyfig3seT2kla3xxusBWMQg+yvW2h7xtynkXhhE77s1Pv
	7WIi32mfzSZO+aR+QJpkEzD63Oqa7q/3jOlEiQeDncyuD71oOGhZAP58HOTTIpr1Jvf
	4XmCIdtxOV/vbyeML/DGt2EEq/aNBVdzY28KGQZs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d230a543-fc482c30-916a-498d-a971-63cc3c9be868-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: be70fea992d65e7551bf7346aebbc86d71fbe47e1ca39614bee816eec184d418
Date: Wed, 6 Jul 2022 06:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657088812
