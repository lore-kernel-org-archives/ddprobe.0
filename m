Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211E97A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 23:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658015212;
	h=To:Subject:From:Message-Id:Date;
	bh=r3Zs0tB81EMdU6RT4xypDKLN5z5HyNerxgvyCuG2QQ8=;
	b=jY/y/k31fNmZxQ2DP1E2UAgr6WFbp0orQ8V4/QiU+Q530yKqv7QnFFzJZFKuOB4P
	pm95f3RF8tpr7uhwth94kHiaW4tCfIW53wrhbWNVNeh0t9Sbyz+V9EOyrRpFY9O9T7D
	cj1BYTtfWqe1ZfOgmCEhYRKs+dxWFLuV0z3NQFjc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658015212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r3Zs0tB81EMdU6RT4xypDKLN5z5HyNerxgvyCuG2QQ8=;
	b=awJbM8s/7xLgaVxRGe4Hj+08SvGFfm9mJzNPe70mkba19flmVntR4nrNu7FLuWIb
	QJCwZwFIlN9uSxawVfD6i7cuaIvV5e8WluCjwfzCVCtDduNiUgxf60jG+K6P6vp10cA
	N8keUZzPIDW1YWqhX4dLgREfGwKBhmYRWZ/Emkqk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182096862dd-ab0e89c2-9529-4687-9b31-90a12735b1f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af7eb6ccecc7a9ef66d2bbc86b6129a6f1896463cf59fb4a69de5d26e2b79a1c
Date: Sat, 16 Jul 2022 23:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658015212
