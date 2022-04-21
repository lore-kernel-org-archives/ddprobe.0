Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AB21FA1
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 06:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650523078;
	h=To:Subject:From:Message-Id:Date;
	bh=3e6mhyOmSfIonBGTNTr/YnYCpxOdRPkyP/D5BnPZw3k=;
	b=T94qhNNIClJXcR2nxVP2IHtefyuHIhK+5+H5UFwdIjQGTTyQwNmxEWqP6iZFZrUW
	3P1Cj98zqpIUYHTsViyiBczUN/0DYJhv/18S4+5cU837EqfAk+kX1WXPHbVOZErx8S0
	jbG2F9RT45acH4H3xyW5K3EsFujqSd885p41tXPk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650523078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3e6mhyOmSfIonBGTNTr/YnYCpxOdRPkyP/D5BnPZw3k=;
	b=N1GLW0hrkB+NuyqULBF2++cK8XV8BCMThwZPfHkuHs132+O9JsTEpZK51j5jWh+l
	/m9uAUMDLPsQiBhx0roZsRoeqFnzaM3WBmJLPyTod3YjHCgiOPc8yu2R0Sn785KV2cP
	JWz4Hsf7jlvqE5vKBvoCxRb2ZkPCIqbsMqRd7mLE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804ad77ee8-4dc295d4-66ba-4bbd-8f5c-47a19f5ef379-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef962f55e788f09966657a4a058150c1c5b8d78089aa0bd2a52ba3a90dd0d9c6
Date: Thu, 21 Apr 2022 06:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650523078
