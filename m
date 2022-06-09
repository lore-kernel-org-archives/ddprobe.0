Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 027B27C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 14:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654783739;
	h=To:Subject:From:Message-Id:Date;
	bh=gxD5V+3kKuAsVyQz87BsdNmCIzPnEpwSD6cYVRgpw+0=;
	b=DueAM8LiJHc555MtfIfAzyyqpWyl0jLts8jFxFDqaQdkNrmFymecAdE15aeJf5EY
	ASFTV8TUZ76y+DL3YYylHonuV1N4c49c57KqNFA77qKT/jK9odw+K3YcMgzULeKhHRF
	RFH2kY1e56698VrZcJyTu5f/CD4jKXWfE+GElnPA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654783739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gxD5V+3kKuAsVyQz87BsdNmCIzPnEpwSD6cYVRgpw+0=;
	b=j8A+q9TgFcZg0CSVgFVYzo4BIkCGVgfNGsg9J/XGeUnPRgQ5MgXG5HplZeLq/o8C
	3/J3NqE4DPqQ0fE0RRBylk4a4VAV6tdi9lwOC/NOMsvK+e2GhDudw15H9lw9dC55Qi2
	V08KpWr4CsLhnjAz0ia9F/DRZL6u++jZ/8GkD4vQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018148cc0576-74a7bb4e-e5b4-43f1-a5b6-1493ebec27bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfd580d197b1ceec9116769311d50208fe9de1301a5c2b109f5519214b783b2f
Date: Thu, 9 Jun 2022 14:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654783739
