Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB0361854
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 02:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655259179;
	h=To:Subject:From:Message-Id:Date;
	bh=+6MGwod5Vm/98xgazOTcG3DV6X+lqTi6MRxv1RSU9T8=;
	b=HseWTrDZiP+ZcyIxruZnTMRj5KcvGc/9lI4Oj9zWyVsS/uSiWIRTLWmcxMcEBRqP
	TCaBqSoI1QfAW5+IKiVeCN+rZuWKxAfyCHaPoZufWdAKszDB2LpApnXq3UMGWaLABAT
	gCK3szVNp0oFwGGpdp8WgC1u0L39utSeEFfqWnVw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655259179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+6MGwod5Vm/98xgazOTcG3DV6X+lqTi6MRxv1RSU9T8=;
	b=L4PkhI8DcRv+Mzq40aH5nhAuFw2GrOh2+5bV/PT+VFFxCFN0PQekLDvKMMfpFH+G
	cZr+3rMt5mx4BNuDaZl3+7/i3rqD6lPAkjuzLdepqhZWjumUr2OOUjsDpdH5IjP/929
	T5PJMal0aivt59kLN2RiQ5/ngmjVtTqxyToC6JqM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816522a8fc-759067d2-35b4-4137-b267-0326244296a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67c788ae76dad6de99e08cc47858fdd7f4639c97d614126ac0202701f37e3e81
Date: Wed, 15 Jun 2022 02:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655259179
