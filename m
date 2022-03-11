Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF4CC7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 07:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646982385;
	h=To:Subject:From:Message-Id:Date;
	bh=VRLVCJ7hSZ8Q3lLweJhqka30YUHe+wwLlDVlvH42Ik4=;
	b=IayAKt5npIBe5ZZ+phre/gZjGD3TtGdke9JeE50WzDEgNmCKVcqJ1dWnqFbvwxKK
	LS/8pe+NxlHIfEURhlkhyfRJ13y/LLFGfSNEPPGlz0tb3n6VVMJBsiHmlP04vXuO8sG
	XqqRseCHqsfiyjWV0ibIO2Gm9tB5oKxnrKIbB9ao=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646982385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VRLVCJ7hSZ8Q3lLweJhqka30YUHe+wwLlDVlvH42Ik4=;
	b=JkExxDNImc98+V9zfxU+jIYN8UBRB+d8PD1pm/gT3lr//cxKDUEbSZq6CrteFSoD
	brkHSDGGmbb6r0DFzXgONQgXiRQqflu4q4UKSHeDUAVHXMD0fAU3Lif4IFiWIop9qr1
	c1f8PN4KARGxtCzjGhMSOdpz5iQNrPNQgH4zf8+g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f77cccc5d-88a3650c-3f8d-4552-be2f-45700f72324b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 714361530b044d4fa2a283565976926bbb98fd21a9ea55ba259d25d55be220f6
Date: Fri, 11 Mar 2022 07:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646982384
