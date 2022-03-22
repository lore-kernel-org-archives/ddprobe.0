Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CD58C6A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 14:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647959784;
	h=To:Subject:From:Message-Id:Date;
	bh=TPQpOiWwdcS4yZXiYuixLxKN/SZwYbrCPiYbyJ5eQgw=;
	b=gjr0IJDUMjrv0N4UB6nEa9fgJ4M33lIpvZRGdb2Qv1lGSinORndqAnV3cJ9lHnw4
	gz7a6+vDVECKKqqI8rfBVB37x0AnqV7I10ltQszSkRUZ8AOlPAxoPPs9i6+idL1swEq
	GRTE+0/ftu5O/0HKQ9KUNMNUUvIFLLrSz46jqLKI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647959784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TPQpOiWwdcS4yZXiYuixLxKN/SZwYbrCPiYbyJ5eQgw=;
	b=MrPTL9/IgSZ/Nnza/g7pt1OLUmtojs9jdLmqiIvl3ByXDyaXF/XDWBBfFmv4Rh+4
	2Hj4GobxbQRmuhYYLr1x3zKneC2BlJwVLjOQZVm6aNYv3S3giEY7DkF6jo/hhy1aQOj
	Ujlbpn4+95LK53zvMkXWzNt+hw5hN3Lvyce3+XEY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb20ebd24-72dfc818-bd53-4389-9464-11d5b033e896-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41e7b8fe1dfdd76298d2557ae5bf984bd75078ebe4116eddab7f0b925ad6877d
Date: Tue, 22 Mar 2022 14:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647959784
