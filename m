Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEAD7B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 09:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654682039;
	h=To:Subject:From:Message-Id:Date;
	bh=zEeyhxuScKFGGIbgQu9x668iN7zhYnJz2FqbZ8NyU2c=;
	b=gUFeWJ3Bbj1rYSZirAejkhj/e716r3+fJkyzDQe5SWfjX/pGy3pVyvad9ktwiLU9
	4zR81ij8wNHG3oiklCEyXVUlIKRuYCaDXgWPtB+1BHF4Hm+xhf4mV9Ox1E65+MsSirS
	xSUMfGWt3LjeQuN2gFk8VE2wXmo+Zco6xMuXS5s4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654682039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zEeyhxuScKFGGIbgQu9x668iN7zhYnJz2FqbZ8NyU2c=;
	b=cVvTTqRhEDo29Zmr/Scv2icTuExwteZZWERHwH4h/DyPFEracek/x8TeTF1GNtG4
	6pTIgdrsFbQS5fSnnmrL78oggmT3W7NoR0m8yLwZB5Vs3Q8QKWsE7dSyx5ltwOTYGL8
	46Vm7MaG6+9phbXUaIa4Oar56n/zSPOnchN8hrnk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018142bc33bc-04305128-6482-4454-83cc-da524f662aeb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 519122b658084ded09a42d3ea1eedb7e5a572b5ee431bcaac6f19a5a808d59ae
Date: Wed, 8 Jun 2022 09:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654682039
