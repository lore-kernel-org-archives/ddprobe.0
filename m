Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 895D97F5
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 01:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655776019;
	h=To:Subject:From:Message-Id:Date;
	bh=J+gAIrELxVtlaiX5vJcICmBPjZX6FFJdlvt4PhCYfw8=;
	b=OTQ6Z3JzNyzIZbNp6gQEOKSOk4VrWnv1/tMIDn84ENXT4at8J5zWVcseJe8+frBh
	PmnTQQyJJdMWD39exrWCQIPzdPk1TV+UoAAD5doQT1s7gvO/LitguMBEhNdogUZYrZj
	Ufp9SrdhM4ZeFVG3cQDJgo5p5F8d99muYVFVeTN8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655776019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J+gAIrELxVtlaiX5vJcICmBPjZX6FFJdlvt4PhCYfw8=;
	b=P2Y5uevJWfFYSxUm4TmIeo/s6wfbQruoPebqawvyVXzynO6P2zd9wb97VujRG1Mm
	2IspTI/JLZnh78VxefQiE3ccxOMF+cE7/x2dPHdlHYF1mSLzBOan/MuvA/1dYoH6ayP
	fbiZEVcljF8oc2NUACCfZ/9scSCqNNAQ2CB6LqYc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018183f10341-30944220-882c-4685-9787-646f40663cf8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 81514d218e848c4dc25dd7a36479f60b1e3278797ee9130e3a030eb6d0af31cb
Date: Tue, 21 Jun 2022 01:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655776019
