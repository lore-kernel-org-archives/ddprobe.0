Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AD8828EB
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 13:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656078412;
	h=To:Subject:From:Message-Id:Date;
	bh=CbwJ/O/1QHqRlrrLk7eEQSi8DinkbTngebLNbQ3mSTI=;
	b=PaUta+RNPbEv6JfuaSfls51o4aqy6kyw+eUEXyi3Tv2jXEW3hflwZMxXXbqfmOFQ
	9IyF9VQzkngvCepyybaTIG4t6vl9f6UksJHAE2QzWQGpfs4bAsE5hliDWiMYLR0Q6qf
	0yKBbv+l6WyGMLEC+gEcXsedS8pEaqhuGxzekxhY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656078412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CbwJ/O/1QHqRlrrLk7eEQSi8DinkbTngebLNbQ3mSTI=;
	b=BU2NHJABCMXvmgrQOsQ6hOQmwSoPPavyk1r3Sfuid/odn3hxyVReIiX/HlgCiF2L
	nIwdyCYhBKR4E4pVIxpG0up/ecasBcwh3MAxqDFCpnLYVqGRJMrURAsdxK/lyHk9/Kd
	A0+f1Ql/bSAmx1zwMstjDPzWxwMDzC8kVbPIbRDg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018195f72a22-3616eb7c-ccbc-4e8f-b933-26c819243cc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec3a56155da51e2b09d8f602d4507625351cdf425bbda42a06ff475fe50a104c
Date: Fri, 24 Jun 2022 13:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656078412
