Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB611864
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 19:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653595199;
	h=To:Subject:From:Message-Id:Date;
	bh=UsmaRl4fuT91qdaGi3le3rMCgaYa9zdccWqI2H62X9M=;
	b=Sfn6HKt8LGWSgu0A5f03FH3v4+FssL/+YZq94cg12lACTccW9IvtGZmjECzQOMVs
	ieDBHD6EIlYAMLujz4bp1YTDkXOMb5eAeAK69HqeoEVVLBOksLbClEql9sVNOPNRNe+
	1xvz4EUAi5EXlzpLQR7l4YwKWVqKnmmzqeH2fIBc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653595199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UsmaRl4fuT91qdaGi3le3rMCgaYa9zdccWqI2H62X9M=;
	b=bSCU8I4dHu7vpPWt6Ms1fEZRryDNGyzSjWXw6woJLgu1chOB1wEJvOXY+Gb/ArYk
	o+e1L7vuzwGkeufsxMEaKgoXRf0kozmn/FYwZCPDQPN4+r3JEjU8BzeeEg5Nb30CnpA
	3aCWInkwUL1o3BHYzJAVs66izS4LPvIv4/MB1vYI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018101f4575e-41752953-cb91-4866-84c5-063c6fa1ee6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b08b89e19989473d9089c78a836136ee77462874021c2b963e465d44a1104e65
Date: Thu, 26 May 2022 19:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653595199
