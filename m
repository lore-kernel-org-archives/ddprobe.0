Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07CCC7C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 12:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654779419;
	h=To:Subject:From:Message-Id:Date;
	bh=UyaQ2XMEKVHy6mZAYwwpZ8Dp3eqsRzrJjiOnqGXZWYw=;
	b=kh866czEQn3Gc8TLFeLxP0RQC/aGVURjiRxhcT6U2GGT+05ZEx4eSJAYFMklKbKs
	fdBCpFROGxfRkAYTS5ewdCFboXdeN4cfTFVOvLQDqbQa3GSwjAFfegUJMum+oHyEri8
	9XUOnckS1AH2WteeSp4vPBa7DoQ5IECZ4UDwT97A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654779419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UyaQ2XMEKVHy6mZAYwwpZ8Dp3eqsRzrJjiOnqGXZWYw=;
	b=Z52BVgN/ZSTsb1RJW7ordiQ1Png5AsdhXNbVyhbIHQuQxAmEsyCzWyyybvvhgj1i
	1YIOvz+D/nivLlpB+U3uP50ExLO1h/o1X1rDOtT4O7J/z9OEGgLdih7OMqjdJ4TcR1E
	LhQoe5Vit0lKV3BMpoRQtR8qN36OCPsZMmDxzyPw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181488a1a75-c5b2fcb2-25a8-4243-809e-33b5be80c1fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf5b0b70f79df2f213b87b4be80275dda628fa970c026e762f4fb4dbacc9032d
Date: Thu, 9 Jun 2022 12:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654779419
