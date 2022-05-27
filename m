Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244D823A3
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 21:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653688079;
	h=To:Subject:From:Message-Id:Date;
	bh=D7G1lQ23JKtIniNUiwLQix/OCeN7cNOjTgeEPkOmE/8=;
	b=YFbnjkU9aYmpmVdweegQXJddlG68Wd7Oc74d/1Kmvqcx9nUIhsQZUJMoZ5ECVOom
	G6JIoCGsBJEyv8LYM7c649XDghKXr/AN9IAGCfsnSu8EsjdxGOKu9Ofpuv/jRhY30EH
	Fm6a6v4TkhiiJwA467Z89JzzHXnXRGFBLvNVVQlc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653688079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D7G1lQ23JKtIniNUiwLQix/OCeN7cNOjTgeEPkOmE/8=;
	b=dfuX2qNe6RI+xOM3KfNHUah4vg8hZ+mui7sNN36Lq5E4otiqMSLJX3ADzJs4XtKx
	OvUt3hI96scRiGJyAtG7yk8OP/nXMK2w1/zc5HG1EHGXK3KZUpyl1oUI9XRpGuLSKSM
	sqwzS6MGvz73nURtbQMBUdTIy3ajoKN1KS+QntyI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181077d93e7-a32226ef-f0f2-4315-a297-fdd50f5e0c3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c827cc40769997c1223685a54c3b9c48ca5d901f7e3dfeb01139a550e40e4a9
Date: Fri, 27 May 2022 21:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653688079
