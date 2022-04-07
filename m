Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296ED20E9
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 04:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649307118;
	h=To:Subject:From:Message-Id:Date;
	bh=JKyS2MZynMnozS6AlTtGWCNRne50rKGdoOoQtbU2UYI=;
	b=J+jSRdVEoc7RaHFw0p2JvZbObV96QLsFHG/FJCWfGRSvL9DQo19LIFQeLuXCaJIU
	RMc4OPPEW3C5C2D5CqcBXdZzbjZAzac+qTGuoe/L2nDmcnT3SamPEdLqV3yMpXtyYII
	5w5O/dNyoQW6tvFQIqCLH+F3CcmMwx/M+UGS/pGY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649307118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JKyS2MZynMnozS6AlTtGWCNRne50rKGdoOoQtbU2UYI=;
	b=N3/iV6chcdqh97uumCOJqnUUNKSn0uC6TdL5xj+1Vno/6MyFQSC7AstuOhhIVbfO
	Qn/yw0pFEHuBaoM5p9zGo5VFoHCe8uMZ/Eta2RXJPB0QaaWia585CB1xNHIwPVTnvan
	OjIKXdxbSeChNH4sVk1xCeQ2OUGcBKhXVzfJPfpM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180025d6a76-36548a35-1549-48ba-a5fa-7675c5510053-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 388e3bbc5e034712872bafeaaaceb16658e78781e0c2116f406e966c77f99e66
Date: Thu, 7 Apr 2022 04:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649307118
