Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4193629AC
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 22:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653518459;
	h=To:Subject:From:Message-Id:Date;
	bh=GihmQd90OwNOMjsuyKV6t+VuRUZohqUsqbHGh581rJk=;
	b=EofvcyqUFbBREylCg722gnl5knnJNHTJL6mR4UE7AmtIvRCzwsurqFYQlUMxA/VE
	XLHbscm93Ze0Adi5Hrg5eWGAJwbic7L3KeKTHbG+VgutGHnud1kmbafvuKzQz3Y5prW
	gRuGNpTiMMvG0YHhpEY086xkjwMQ9u4T86831wkY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653518459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GihmQd90OwNOMjsuyKV6t+VuRUZohqUsqbHGh581rJk=;
	b=SYTW7tadeGwtxRnYAnrUfBJo9cG6S1c2dSRc8/ErJeK2utnwI/R/7InAFYIqMcNH
	o9P3K7sjy/0Sz85ZHebPKABbqGnCevXfT6BDiVbzmjI/bs8jZHM/wM5cQ8jlv6W8iP+
	PnSfK4S3/K/gZuXly5G1KAkPcwSVud7dEcw/Rzlo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fd6161bc-9ae863b5-4ca9-462a-bddf-f150fe3e15e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e28b618f022b082f6998af830d89ca673466198f179d1e4017b8215b85933f83
Date: Wed, 25 May 2022 22:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653518459
