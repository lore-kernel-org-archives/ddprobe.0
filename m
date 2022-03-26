Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F37077E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 16:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648312618;
	h=To:Subject:From:Message-Id:Date;
	bh=YF7B3azMJhi6lmRKuW5wkTlIsgeW9BW2oK1yYC9afms=;
	b=HmQ9M2CnBCEIf3o4FVB2J/M7s0006G9ttkxL9engJ2WcfrkTOqJBBPhoJhampqjD
	jmcM/3pG/YRRRab/8RQNY/6EcLLwdh+tQocKhRFvZN3VhBYOBNYkj9XFn4ukry13Z/T
	NTYez7h4kO7wQksNvqi3LvzyuonypJTVOWRXRslg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648312618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YF7B3azMJhi6lmRKuW5wkTlIsgeW9BW2oK1yYC9afms=;
	b=V2rouJo77EhvWov1oUa9I5p6zRWW8244g78hzp/mOt9Y1Mzp2oRlPr1YYWQwyBow
	Z+AnfQQ22sPjDRmhtYEfXXphdxg15k5eCMKRMgwB3QrN6gD4yfwmOid2y06jVeIPDWs
	niEiy/kXffVP6Qqoiv/Ysy/ptmj1xIOSkV5UUp1I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc7168cfb-395030a1-7bc3-4946-9273-b8c0c08c2fbb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d0b9d95c18a877e9636d4eef39e8500ac2dc8375ef386d99ea8759937738c0f
Date: Sat, 26 Mar 2022 16:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648312618
