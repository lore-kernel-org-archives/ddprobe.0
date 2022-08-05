Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F03117C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659699653;
	h=To:Subject:From:Message-Id:Date;
	bh=2XcpGMHKCskv4QRG42Jh48QZlRJ+lw993611StzRJws=;
	b=SJCsH3duW7HDTAyLoeAKSSV67x0Lci9gVbU5c9gRxfbV5i7FFXzSJ/9hTN8OQkz+
	PkoCpVuTyHrWMIf3WbQFraRv/e+IJajAtnKx6pA97ZOz1bqy0UNzPcDnqQcJOZ6je/X
	LBxm5s3EkOi+hKIIWdY8rmI/IeVgRe1oO4/PHp2s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659699653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2XcpGMHKCskv4QRG42Jh48QZlRJ+lw993611StzRJws=;
	b=RhGWBzr/NiGbMOtGc58aFmyAGUnkZkdB+LcGnFnA4OxQC/uNywnvUH435etH3yZZ
	s6mIx1WwU8LPZiS9HIhKinIWlkdEe4AgZqpqLfusQTTGJaVAT/GVEV+gAf7NSfz1ZiJ
	0JNzLcvCOMQ05jx9bd/sx86DAT1JQYjRlbjPLFKQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826dcee7cb-856907cf-df81-476d-b27b-6e3fb7ab91c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae6652e96f64cfad8a8bdc4d9b27098b0751c635b04dea489faf240e3cfbc78e
Date: Fri, 5 Aug 2022 11:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659699652
