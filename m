Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2421323A0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 22:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656110212;
	h=To:Subject:From:Message-Id:Date;
	bh=FOXNUGAKnUj3Xce1Ry8qIkOFOkI8tIshputkSF5T+p0=;
	b=V2mmqCycD2apl7yIdqbIp6reFWIeCjhg1URfxDSs+7L1whVFDisPv6+lOqqZkMJo
	lRbEkuQUAGIbqYWcCWqI0Klxm21aHTO04HTow+rSIw1DfdEpFL43neaXxxgzlk5mupd
	wE46GlrbSy3Y6zmnf4USlJOdYZmcQS5NyClqSLek=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656110212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FOXNUGAKnUj3Xce1Ry8qIkOFOkI8tIshputkSF5T+p0=;
	b=FpdDlCpB7ycVN8bdLk0K/xHNxuFhNmQ6bKBi8LlJ1HjcadRqYswfORhHYwJhpPiA
	/YJkQytlHMawRyChuKeq42bWDbp3H3nu/FtaPuOPSq7isD1WA7PlJzu8r8uAQQk+4FD
	lBMePmmu3VksPQosa7wLeGq1RfQPab7NnQaTEx1o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018197dc64c7-32c8023d-89c3-44e5-83df-c5dc5dfab364-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6bd62af2b0619582989f329a1da01b5675f9aed038103bc8c5e7ea7ef1a8959
Date: Fri, 24 Jun 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656110212
