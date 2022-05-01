Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437A228FA
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 14:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651416958;
	h=To:Subject:From:Message-Id:Date;
	bh=3onkJLXxSIDji3UHYKQLEBaB0qIJiXXC5ZIWqdQHzvE=;
	b=WDeY0UTJ9pOoA7T0+mP/KuYehwLumefYzVtfoC6ziT8hi658KWc2klMpaPgPf0hn
	yGvbcNKBcAZfpaQlAlduN67Q7Dd4iMisWOi4OC0MCpNN29cFfO0ae+uu9DGmmr57KMm
	ZXeT4ZRspmZttFoTjJ1CRgyiF0ZF5G1PxD/kZr5M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651416958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3onkJLXxSIDji3UHYKQLEBaB0qIJiXXC5ZIWqdQHzvE=;
	b=ir1DaNLe/Z9WtShKxSIRbwyUtLUMw5u+Ww/IPJ4Z0synofu1DJJdW6QSBzuyvUZ+
	lHv6Tu2EbxZ8HJEzIiV8eHxbxg6/j7LoMiphAzzKLfwjoNe+YBnnZjIDErVr8ZY34fO
	o8+bcJn3BO5VA9pwTqdg3Ptl5XIEKaDLH0R5P1Bk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180801f05a8-d9f1b3bd-18fd-4100-8a86-1e68cc5d823a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56c59066d3dec136c91f1eeaaa7611678e36fb687b84beb72a0549473bb6837c
Date: Sun, 1 May 2022 14:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651416958
