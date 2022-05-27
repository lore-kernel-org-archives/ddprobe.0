Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1649123A3
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 21:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653685619;
	h=To:Subject:From:Message-Id:Date;
	bh=kUlNTtLfeBYQ+APoZg4ub/DP+scfNoFl80tS54NI+6Q=;
	b=DmCDCTz1qYRnnKated3AW3Y/czZr4F1PQ58mDJ0nLta29BFk4XFSTNEy0o8RjkuE
	YwHeujM39FLLvn9xE5oewxgISx3ti6MDVGrg0gkLVJiyI+wF9avPtRklzRa39J1juwy
	4EkoqaXzXAnn+/P4+OknC3eY4QE0wqJWMogV+kTU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653685619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kUlNTtLfeBYQ+APoZg4ub/DP+scfNoFl80tS54NI+6Q=;
	b=Stqr3wj81Z5ZK+RS7S6SKsfeoBB8gDtIZNL3FuEO2PfTzqtuscFyIfAOIgssMts7
	+0ScB9BKH2FkbvSay7tUzWrB1xyfMpwGZf9fgqVoATXVoLV8BoRcie78CDIthgsLrOo
	oSGL7UmNGVVzoizj1neVYqGGTYErYN8e7EuSOD90=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018107580a6f-adf6d1fb-5940-46b6-ac25-36f4a90ac201-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32baae2855620d69a07e88f016f9dc322fe4bdabb47b9350fe6930811bf03692
Date: Fri, 27 May 2022 21:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653685619
