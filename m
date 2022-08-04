Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F556650
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659594053;
	h=To:Subject:From:Message-Id:Date;
	bh=J6q+d759Ke2/J3rogkRcqAwO94pZ2aon+PdLfKZ1CY8=;
	b=VzGX6wyWYW/2The/SQUrneb9WUSCoDr5z6xbJtb6H0lr73X/ls+f1hoEIjMJZg2Q
	CqUWbn01G/0MbLu105FkpXMx/f0CZ+llbTko/oMYWsSEOGlxcOguxSCttTZbiKCIZV+
	3+dcPeThJHj1zVNcoEoT3ssxzD4UvqmVxL5Xjowc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659594053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J6q+d759Ke2/J3rogkRcqAwO94pZ2aon+PdLfKZ1CY8=;
	b=QGND16SVr4A/lKmZTn25+5hYeqIWwd9vdSM0qfyEpSk6GwxqPChtnP3MRxInMuDX
	7xLq2LeBROn1T4Cf9c3A9c4NrL7p7gFwmJFw3H7lLdTUGksBWQUXVXfVFoe1mxpQDpz
	s/LYqpVos67UOPP2l5ojjSaBTJ0mou8nIXFTtD80=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182678393d1-128e00fe-271a-435a-a283-572c2d8fc135-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 112ae466136476219b09aebc23669f4a26854d1f5af496271050e50604ef70a5
Date: Thu, 4 Aug 2022 06:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659594052
