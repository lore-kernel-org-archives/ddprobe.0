Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153B87C
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 22:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657234012;
	h=To:Subject:From:Message-Id:Date;
	bh=snKw7J8rydJimE7kgQklcJQYxkqn/h2XKCOeBcw2fF0=;
	b=FXofvA5ay/pqT4N2HgQVs4DD2EgNvNgfrutvPlI72K8WGEqDEdhEzJEYkwtD00W6
	AtkSQeq2zY2SeZOqqSqo4nRJQghXPmaRjFnR73sNm6mpjeH50O2WGL7TzDOSzzCvO/w
	4fN9CxNd4s2IGx77oEUm26oAM0JuHArv2WR0bUcU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657234012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=snKw7J8rydJimE7kgQklcJQYxkqn/h2XKCOeBcw2fF0=;
	b=jcW/+DO4ZtHeSDtysPAyZBBFCT5q/ztNH+/5cxRfaTfY9ELXe+QMstbDEkT86s0j
	r1Tx5Vb/3KG5bq0T4qqnyxZdCrdtfaxMdYQa0EK3CyA8Pn9SmuEy5enIHV5YsfxeZzw
	p/NWc84Ma7278IvS33AE6O206vlZWJAOBmsoGXSs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dad8389d-5f9894eb-8107-4c0f-88ac-da21715cf19c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48d32137d693ffa26ad058e9a39f0e11f0c92effc3330833706c6f1bdb087161
Date: Thu, 7 Jul 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657234012
