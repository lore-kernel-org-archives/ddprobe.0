Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0814D1389
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 06:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653633479;
	h=To:Subject:From:Message-Id:Date;
	bh=dTdPMe15j6AQgBzSqGGYOJADFbIWFN5y+5PtyXNztJs=;
	b=EHG64kQBFrhBcH6jIUZe/zkWZ8BWVimMEefDHil2YdcpNh9HadYmkavC88SDbfSm
	NJEm7i+pQ4D6ybw+5qAmDCO1DyxKMyk5t/fut4XU41gRL+v+WGvAohfZlvXYwcOIdJh
	xtYPhiPxnT4pfvcNSQ1WsZdsysfz+QF7tMQGz99Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653633479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dTdPMe15j6AQgBzSqGGYOJADFbIWFN5y+5PtyXNztJs=;
	b=kqcFRH4CsZK73zWWGGMAoQFXJ6mf3QN28T31bvEuyDnPkeRc8HX91O9CsW9MkBmq
	PxV4gPwzKWN3IO8lTxvQaoBl5BrabscqfOOQxD0aLWWYGntIYNbORFzmh3X+yaenIfK
	9o/PC2yrxIZZdgsUcG/DVtlK4DGLUm1vFMO/3TkM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181043c7269-58269251-1307-4a3d-b139-aa0d64ac5fb5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba40a2fce586a6991da43715953d81016cf0f4eb33f0df2c243401022769a865
Date: Fri, 27 May 2022 06:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653633479
