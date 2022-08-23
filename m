Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E7D7B
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661243453;
	h=To:Subject:From:Message-Id:Date;
	bh=Pr3lR/MdEG5Z2DNEbpm7jC3g+7+W/J/pJ4x9KvThy6s=;
	b=HBTspBZm6qANAxpgVTZCiZhUKuFJJ253XBnT88CvpfkxYmw7HGJh4vGxt2EilJwH
	fjxD/RpChNchlSfVlTiHoZvAQQAzHLQmGRggOqTKxQNlJZvmsVKsnG+6RlPZcc5qSDM
	AEj0IOFtyUdIjMLoBnsZsUHGOE66eltCUXqu0qjg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661243453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pr3lR/MdEG5Z2DNEbpm7jC3g+7+W/J/pJ4x9KvThy6s=;
	b=O901vR8DbdAmmIbvQHjUkxq//JXaSWbJU9oftYLXI2pT5CZ15y9Ju8nqqHHIfSRX
	ivsEHJq6myEip4WD4lr/ovinNNUB47BhCxPgYVN8OitqgzZ2lUcIJF4yklPdzjvc04L
	FxhNVl513a5Ej6uB0ZodeeYHZXjHdkBIaSe1ThzI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c9d36ce0-81d4a405-84e0-443e-9429-0da1f0228c67-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccc6352b1b75cd6b398a2af17c16f1f23ca8457e897948a5e1441bc8fd799a99
Date: Tue, 23 Aug 2022 08:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661243452
