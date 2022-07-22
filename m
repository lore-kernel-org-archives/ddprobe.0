Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E31F33C4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 15:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658502412;
	h=To:Subject:From:Message-Id:Date;
	bh=zA01Gi7erxVwKfqVVM5zhviqo36G+GN0XWD744kqVW0=;
	b=gZhrrCq9WnvMOuU1Ish43GwgUFp92IY0JGcHmfMO2mf6WwhlZg96wGOD/4OJzS3e
	T4ywzAgyq8X7eYPus1r5whdsKUDxKjm424l729boCR/QMQ9lABcSqV0UHjh8NQR1fRo
	oTt+jKchRcGmMOeHLgc3FZeWRhBFTJOo1Pm3Flek=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658502412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zA01Gi7erxVwKfqVVM5zhviqo36G+GN0XWD744kqVW0=;
	b=JjctIW1G55Qi6QQG6iykp1q+ERrbRZYSdjOT1OSTGAHp2X9VV6hIDdCR5twC/3mQ
	OlbfF3mqWCLNnr8AExsXG9CVyQMEQNnajJL5lp4HdajpHNizg2M4cyrOfkMfeQOZbwF
	kksSdW7PoduWGdUOKYnnC7gcki/egrNVFUtO3efA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018226727839-b39e6826-c768-46a9-892c-defef10448a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48be3d45c422296b0d89e0df7f7db0add2c1bcb510674dcb88370bb53f5a883c
Date: Fri, 22 Jul 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658502412
