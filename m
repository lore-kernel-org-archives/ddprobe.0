Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFCD436A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 05:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652505479;
	h=To:Subject:From:Message-Id:Date;
	bh=D3i5lfm6ePEEMdOdkz5HDzbRpVC++KNDk9x+Fi00U5E=;
	b=K8BE6IxYTrNxXn8kOpK4BxpE2SO4kzjLmm7bViNAcCEzk/zFP6tVHN6PWjjuSSO1
	EW8NyGLHTut5JD+fPt2zZnI3SUU2i0fPvx11InqYd8yUliITPoqBEF11NkFBb3jVwl1
	+OSpoVboGNoVQHOpO5BNbV14U5fHRm0Fb1WvwA9Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652505479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D3i5lfm6ePEEMdOdkz5HDzbRpVC++KNDk9x+Fi00U5E=;
	b=h9iPG9qdUqP5i9H65iJZ5tzSQd6/TLK9/UVMjV6FMOcNIJF/QJuB7WPAdZlcY08s
	X816hkLSw74Zk9C6qmOgWL9J19VtuVV7Ka5d5Vm/j27FSFpYdTx1Ot/A6U1mYkAiV2N
	j5Na7Sbpe80Y08/P5vJnYO+ZEY4bTNWFnCRL4xPw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c1008846-c22852cc-39b4-4c2e-926f-19b0b2626010-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2ca2479282702eff9b5a5dae9a689ec33f5a2a87667cce3a55fe216ec9b29e2
Date: Sat, 14 May 2022 05:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652505479
