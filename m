Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 996B67B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 08:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655541959;
	h=To:Subject:From:Message-Id:Date;
	bh=CY8/pJ2sN7J2+o6La884AysMD0gmKxWjQpJ37IvruiQ=;
	b=eG8+yuug9rkN3d4/fQ80WRoBkBYrnshD7E1zNZtGHUM7Psto4+C2rLbSncRlaYy0
	1aCnCfCozRgJQXvjwC93pGdgmhX8lG4wxFWBCmZl5MgWYeIRZQc/s3ap6oaYSYZA500
	p09DsbZWk5EwLOsjYyDevK58agNwxpXmNwIJ/z+s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655541959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CY8/pJ2sN7J2+o6La884AysMD0gmKxWjQpJ37IvruiQ=;
	b=G6P5ZZgH9TJvuz5B7ybnU613nngrq1tgsi4mIg8GPNy7aoBGvJLLQYn7UKdUGQ+0
	jFzVM2TfQ8gtuAuxy6LssyK7shk7ymoUJfsLydZjm/9vibCu+IPx+q7O5gUISeHQN5x
	u5vJMVmQoEsxz5n5CrJaGEe3juma9EG6UtF+e6xE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018175fd8a68-e40c2dc7-9663-4133-9546-0b5dbb6a0c32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e7a0ae96587166c3158ab5bda4c90c19881c1aff26346cb20167148039c4847
Date: Sat, 18 Jun 2022 08:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655541959
