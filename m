Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB5F15A7
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660833052;
	h=To:Subject:From:Message-Id:Date;
	bh=5a6k8CwmjLeBIco7eMDSLgQ4roMHkj9y1ADF6kEQZxQ=;
	b=bxH6Gq4X2sNGibxhdyGgrVLiJRMyZOaAuIMCAaYfPnZwbJGi2A4AZ5+DFJ//4RI9
	/cvLtvEIrlEyfBjPFjj4pR66GCiJBWuRN25BRDZD6ZV8KKL210nGgJ698+EH1D3wErX
	JXWbL0x3otyIoLtXibNCyy5E32APekOLrUna+wu4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660833052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5a6k8CwmjLeBIco7eMDSLgQ4roMHkj9y1ADF6kEQZxQ=;
	b=Rt2HQUppSFnGFsiDTIOY5w+i8pcLWHpzcPKwG/kw1r2hhWodmB0qPi2ycgklHGPs
	A31TN2L81kqDUX3ydquR0XOwk//wlluACJq1iAdPv47WquvaQaT6d3bpdvMzlHJ9dgi
	k4HqNHp321Q43AiUnC8P15lLxyqv0HukkMpRNh6M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b15d377e-89decf65-590c-49ff-9d14-e61820663c20-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3fdaf72acf668870424dca25c9f4b6d1b18a525ad81488fac67ed0e3c727330c
Date: Thu, 18 Aug 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660833052
