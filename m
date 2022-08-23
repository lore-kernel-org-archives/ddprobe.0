Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 797EC7EE
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 02:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661221852;
	h=To:Subject:From:Message-Id:Date;
	bh=4NO+vKNYjgJWrErkcM1w8ykQShLw/Insx0ViNbZ5FVI=;
	b=IJe8oamz/MB0Yd1JpJAyCWrnlSJcn9s4NyO3eqxf2CgOwpdS6dj7X3h233ql5cv/
	O5rjgDDj88PeLrocS6mxVKjcAzzbQQlvtOxktLaO23fvUZ2sW2ggD7ovp5QzcSs1G+j
	obAwBofCb7PkyWaWpyVqjnBi1RFi0V+vxN6QK4hU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661221852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4NO+vKNYjgJWrErkcM1w8ykQShLw/Insx0ViNbZ5FVI=;
	b=VZQC2QouhS51gyYmXymyVJPuhfjf1A17k67bjRjXDsroML0Tvm/Mpo0Zv38QNSKb
	nIrvREbNyuzr18jhibL54NxF4amz6/eRjSyqjjnQziCK2QLOVPpajJIh6W1zvc2IvRX
	kFaKqGLRTqvnweYYGrZ+6+rFEtUegnneY+Q8JR/0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c889d58b-ccdeaa5b-e6ef-4cec-99be-d9d9123f36f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae686d7a3c209672962b99b856d07a1d75506a077a652971555985a025706886
Date: Tue, 23 Aug 2022 02:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661221852
