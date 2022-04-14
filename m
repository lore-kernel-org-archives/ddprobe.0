Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1016328F5
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 13:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649942518;
	h=To:Subject:From:Message-Id:Date;
	bh=D7+P3dVUR+Q/Z0OkBoFdbp/fpkbYDnh+rq0QcikkRJk=;
	b=BfifU+n34oazt0E4lzTYxXb7r22d4gm/cwuPywrtcU576uzdVN4ZCmDDjCuhmoHQ
	Vg0Bv7AsrdnCPUC0kbOeBndX2EwbueeRB7qdSUeauNjy9ZiTAvz3ATwdfw0guzRDKIh
	VrNPphJ4BRVeMGxE804kPP4ssFB8pZTNI0D5v0oo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649942518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D7+P3dVUR+Q/Z0OkBoFdbp/fpkbYDnh+rq0QcikkRJk=;
	b=YIY9olV10n1LrMzHTkll2bvO9BJllM+8tbXggonwm6F0jH8ah0R/5ZefJF/dFRDm
	kwVPCBFUuiqzbvEU4s7LrSu1EMMDPMHeHer1Czu7DNs0T6doiymywUd4qQp4tqbzLRI
	aoiu1vX877iRpHZ9vuChEeLKkcVjdIQ0+pEcgSOs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180283cd9e2-7d3335df-ba26-419e-b46d-c8ab26862ae4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 524ac50523814e38a3754c18b6e6c13af9e6d399f32a5a8b7aa33cc7ac9beb83
Date: Thu, 14 Apr 2022 13:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649942518
