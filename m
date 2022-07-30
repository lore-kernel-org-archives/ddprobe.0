Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85B463C26
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659197452;
	h=To:Subject:From:Message-Id:Date;
	bh=EjMez9JMxCniuoN7QeJ7eFTxYt/Q76CcHlWEEnXT0M8=;
	b=OEFYFoK8SKp+r9KSinRLuGQ8jldUv3X/QgoqCeG8wIbNilIpISkjYgKVdR8HdCQv
	gl38GcZjt8fcxNYfbipBvbHwHAVkfkbrSOB38i+XwEjKaOFFGT83e2Jh2VEYBJKzbZU
	gVqB6ClWh3rgVQ5t3OQYUj+fT2VaX5VHi4Zzbry4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659197452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EjMez9JMxCniuoN7QeJ7eFTxYt/Q76CcHlWEEnXT0M8=;
	b=AY57oWW+JLXoM+tcb6bhU8ltUsaHFPG/WfOy15aeb819Lp4QFSQzQXYdsd9Ut2ba
	ZIyz9zvjvdDQR0hGhrOFgBMIzyZfCzpVJAxUaZRPpM9YdZsMZqVS209oU4CcKT7PSrH
	fo1Mn6GV3+JgtupOp0kEkAKCSYp6cdbli66gKDgI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824fdff122-1d8471d8-d417-451f-adcf-fd8eb6fe3df1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2866baafed5006df38a2d36d10cd5644cd22fcb9805923af8e8ea2f219753a2
Date: Sat, 30 Jul 2022 16:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659197452
