Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAD77C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 15:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657034212;
	h=To:Subject:From:Message-Id:Date;
	bh=n27UHEdPltj14lEXmGdl5OS1V1AGMWKc3SnE+MORY4M=;
	b=EUQzx1PvdXE66yybPjT0S69EZa4YJiyKLGLKoDbjTUTt0iKeDRjAOe+vkpeyJiKK
	WWJHSVKW3OXGQRPRxDeixM4D/KzXdY1on6UFqagKnH5g3IQv0nOg/xo/QVoviQsm6ml
	WfyH0o0/UqEQ4vUEjJ8Ij9hM8el2smfrA58hBnac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657034212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n27UHEdPltj14lEXmGdl5OS1V1AGMWKc3SnE+MORY4M=;
	b=SfPj6B7Hm7TsG8BxgM7s+Boyo+8CDJxLmrG9FQtTHaY/Asm7W2XqDHsj4XRwi4g2
	ZZyyGY43afuJ+ePqxyT1vRhBJNimgU3RRrN+IPd4qpAy1hnEWiZ6vOMtoM5EcwhrCkc
	AqgXPX2/URigphC4wQ6BxcUFKV2XOl/UOx4Qad+I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ceef83a8-9bd195db-1959-424e-827b-4ac7bcf65292-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13117684a97503923677074e4742ce6646d474081dc0417f6a3adefa8be8b78d
Date: Tue, 5 Jul 2022 15:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657034212
