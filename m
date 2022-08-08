Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 764BE440F
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660000852;
	h=To:Subject:From:Message-Id:Date;
	bh=FiRSApezsIqfqQDtzDZkC0ia3IK6RNIlmP8KUaEQxN4=;
	b=XczZpZGIsreW8kUHIvHbkAE/39ORVsuMaP2zS7XHZ57FuP3QKm6rNCnAsgUP161T
	C1MSProcs8i9VLRK4KiZSUEJaUrsHoVMGHv+2oiBjn3pIc2bldE0nHm2v2liJw/pLh+
	wRppG/yGejkX42hfGPtPWhedNrpXUWTHWG+zwTdE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660000852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FiRSApezsIqfqQDtzDZkC0ia3IK6RNIlmP8KUaEQxN4=;
	b=Lel6dBgSsheMqKySoxwOW8rgj8sUYYSjfTOrbEEZzyKqIAUNMVT3WNF66aV6tVA8
	MFkj2ID6JUqEptG6qIVv4uEgmfatRepUOROY+8QGrU3vuRVn2BVQiUoCfQY/BaNdlEe
	V5hiMeNjM0Gg/LyqXFEcSUMwXX8S4CTC21ROlz+0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827fc2da6a-8fe3a24b-d8a8-4635-87ac-500d3166fd5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b4145301ef868f58dbc41a385898d2b020e0e220324be0ffe499348274c5964
Date: Mon, 8 Aug 2022 23:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660000852
