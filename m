Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407B933C0
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 14:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657895212;
	h=To:Subject:From:Message-Id:Date;
	bh=vSFVCkW1YThcEuj6ZOiZ6p6xYDSHUO/bOCmI4QJaf3c=;
	b=D0a8ICrzsSFj5yB+IIWYqLOSNuMAQZH6+Nv2u2KBat/z4E8obqF13nw9z70PSDHa
	yiLxnchl7wAviIsAzING2HqhJGucbvKV2t0m9LFFbXE9y7BRQ3MFizH60eABzZAZhzR
	jPMBe3y0NW2MRnZ8kXu08Djp2r0yfbwoajfoNT0E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657895212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vSFVCkW1YThcEuj6ZOiZ6p6xYDSHUO/bOCmI4QJaf3c=;
	b=RhwYwa2/4uTmfu5GHBdA1VXcH9HTBd9okQZHDzx/4opLk0PG5UIEiN3kgptYrVGk
	H9zfz7uRF4e1EPEU5rjV1yNTt2/T+1rpOdyyDd8aDh+j7HOlJnRlRx8h/SvhT7chGbk
	5HZ97jQB34G+iRBd9vw13BD5C1kUFi4j9kUL7+7E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820241552e-d523bce2-7f5d-4f44-afc2-e8f75f927e2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05b49408dded9bb25ed12bbb006f532768fc306a2ac09aed84df6db1c841c440
Date: Fri, 15 Jul 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657895212
