Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A5D57B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 04:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655612159;
	h=To:Subject:From:Message-Id:Date;
	bh=7leXv5C2Qeio20gKqqUQGEM1FqfXt6VUE6eRyakJ0HU=;
	b=IAK7Q2VzmMjzqYL21hcZiQJ9fZgTha82tiB8Xh2N9UMTvTy37RMAsU41q4tQh/rg
	8N1jvzSQYg/F+FNdabpvZZgeS7ewhS/G9KVQAJYLtoNiZqJlxlmqL3F+Olw+d0WNS/4
	b/q3C0Qw3Lmq8oRZP/mQ+rPRL+iNcPEj7GtqPXOY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655612159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7leXv5C2Qeio20gKqqUQGEM1FqfXt6VUE6eRyakJ0HU=;
	b=g+5wI+0upkqcgrx+R2/R+vuDIFFYLttAPNxvsMxyH3R4QsLAmpRUiCetsRD+k4fk
	QBOK2PddKZwb1BvPMdCVaBKSPgzepRQgccCEVtRuQSbBOAXYFQYXxhIsbUzAnZc3did
	lv3USGugfZdoEdIzwR52fXPfL3JXlAj0nozrzFsc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817a2cb4ed-5e34e8f7-f572-43fa-b23d-99a4111b2312-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a387374649e55ef4402553ccaa774d2b4f3cd0fe07d7dad4b1d4aa96b65ac0b7
Date: Sun, 19 Jun 2022 04:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655612159
