Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376517A
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 04:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657342012;
	h=To:Subject:From:Message-Id:Date;
	bh=uzSpq2fN4naHbPQ3tnflSNhNmy0Kougf4qVPp7qoQ+g=;
	b=OCH4vN3jEmsOuGFHJmdG6SnJXEitHeqOwLlIjT8Rl/cyOL1pP288ZrcJSOjOOulc
	AHTB44FFQQsizbfIhHX3n0tKTLTHtkMz0pfQ5SOuxlOayiPhXJPcEcUnVaUMrBY/YVs
	tKoqwe3CmRPCHcQFS+F8PL2nSCqaEFx0BCPIwikk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657342012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uzSpq2fN4naHbPQ3tnflSNhNmy0Kougf4qVPp7qoQ+g=;
	b=bgZYSjELM3JOw2VMiZGeUxs/fVAMI+tczCtMCRIb0cFsv3xeUjySiX3dw63EC2TF
	b3IPSsXD4Ha5iL4UmCC80b5kM6Z/9oX4rSAO5P7G/01TiYs2PuK7i9HPLQdrKr1OI6O
	F/5TVVzT6qKFq5mB3tcb19+gLbtDm8MGELKGHbp8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e1482b99-8213cd88-9a9b-4d09-b0a5-2512ffef20d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a954281d53de525ef68e4b80d29e67e1198c2188ea810dff458598cb670170b
Date: Sat, 9 Jul 2022 04:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657342012
