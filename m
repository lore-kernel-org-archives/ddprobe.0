Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B40E210B
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 08:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652431979;
	h=To:Subject:From:Message-Id:Date;
	bh=MXv1V3ug7ih/9dLBrtRuvbK4fJfBeGJSlS+Uh+kQ2Jw=;
	b=KJknekPPr4zZK9B+r8KDKEvBurXsjQp5Z3wdJEzTYwRDv9rvy7oKxgiMM/qnKHgH
	ZLexaI+M7QiooTcOG3fkP5ge3RYB03ouxMlv8cw+/8VD5NgiswmS+dNeAgnbB8TzTuZ
	gDp5KqsMLaN3/ubI+2d9Ry/9FUN2l26Gas2PsrzA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652431979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MXv1V3ug7ih/9dLBrtRuvbK4fJfBeGJSlS+Uh+kQ2Jw=;
	b=ARVezopChUZWd1M8UK+hhKMVW2e78t9ZNgkmMj3VUH4GnSeMAsSTBjekimsPZ5y5
	gNnJxXImlMJ8UXZh8w0s5XDyTuyUQZh59Ahh8rT1nqOAerMC0rAtV93K7SkvzLfbsVd
	eYUNURkdFBofmdrwQvMy6RH8xF7+LohPq0nC+jhY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bc9f02e4-1ac9530a-f925-4ac9-9713-3d466dde4c78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8507e37fb4c14e7a46f98be51a1e9db3b0364f4aec704371a8cae0311b4989ba
Date: Fri, 13 May 2022 08:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652431979
