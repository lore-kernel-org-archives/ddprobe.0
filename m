Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E280C7E
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646324785;
	h=To:Subject:From:Message-Id:Date;
	bh=q0PiJ7V3RbPoDg7h9U/BBdqS2VFCiRxsNdZX08Ji+8Y=;
	b=FcgZloN+Ys15UPevrH3V/xxd2j3lTKCpOxRXj0ralwPKl0Mx447m2y5LVpwyhDeV
	RvMw8WFLHz8Fpp2O75ujss3bw5EeEJBnk63ydR71V54Xu2lRTrj2TwJfDPSD0NxClDU
	xEY/1+3NQk+Oh//K6LWQbZ+EZoN2KxJlxaaOCQrE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646324785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q0PiJ7V3RbPoDg7h9U/BBdqS2VFCiRxsNdZX08Ji+8Y=;
	b=JQ58bOPbGTUpRnk/PbywRpztONJc4Lvj6clrhNrDL3AjVvu1HpOlimy0cXR2CEpX
	HGo7h6WljayLj3pv+HJzFGdYvs7KLjxzDjxeGMG6gm6OeasvtrM6ixDQQ8+6qZRlw4E
	SVgCw/5ka469c9KpkGwri6sas++5BWhSvjDfQd6g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f509a9eaa-580a5c32-021d-43ca-b2a1-4a082e1b5148-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a67253b5863c5bc43e85fd3b88f00b09b9d804d27e0fa585a0962e8c2795a4e1
Date: Thu, 3 Mar 2022 16:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646324784
