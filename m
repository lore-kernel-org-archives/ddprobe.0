Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D369FEC1
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 11:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655810399;
	h=To:Subject:From:Message-Id:Date;
	bh=HjFeJOnwrbA4Xm/j0yAP/a+PEUAgwNMRSlIpYzUXA+o=;
	b=KNKE3o0/KilP/q304ghbYxmtkt5BIm4N5IOm3Ac2qAz8rIPWHR9Ar2V0IV1PirSc
	i7ES9Y5PWQRHzVz/0ruPrF1Ic3ATQTqYVpSedfQVyI1q4JOaQYKnIECh1c8DBByN/kc
	RBzeYgZ0czAFYJS0f1aScySCbMX38WJX986FjlKM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655810399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HjFeJOnwrbA4Xm/j0yAP/a+PEUAgwNMRSlIpYzUXA+o=;
	b=Lef9sJhHKJbBKdB9qiF0v3HRQ6DYh52veNZeAg6aYWRDGlsvKcq3egoz0iQCsi44
	dufkdrSEugIF90UhHspFMhXpTLCr1d8XWfHdLsnS0a57NDgFL3IwzSXIKtD160F7LO5
	PK3A0sN/IH4UbkDPVwBkKnjryL22Hr1ArKRVUhEU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018185fd9bec-aac3487c-f5ee-4dd9-bafb-f5452a2bf1c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4762ae961de791ff617bb34600841688cfdedbc176159bb0976d47c4a7eb1aec
Date: Tue, 21 Jun 2022 11:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655810398
