Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6F2D7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 18:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648146238;
	h=To:Subject:From:Message-Id:Date;
	bh=z7u/0eLfP9ip6Q4JWp/4s/Pg1gNedkC0i8pPud+t+5M=;
	b=bOhEq4UafxMeTRzpnc9E+WAJg+9XzKNknalQnPlOB+w7QRkP5Tpl3jZyw2PEwICE
	tkXv67w9wMq39nU9Jzskqf4iFgM4I/uIWYpOZRV/y4IMmrgfS1BK64qBtb+t1fcmf86
	2RHOnvguLwQq00rynbNbugX33jeYbfL+NewVuMhE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648146238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z7u/0eLfP9ip6Q4JWp/4s/Pg1gNedkC0i8pPud+t+5M=;
	b=FJtrtFU8TM3tEyYehQDZjxdXz4cVYm7UfJ+LNGe0/GwxWBgV6Gmk/544IlbLqDwL
	UHm02NWH9GAVzxWFVxSJJuMOS27dAqn/ldsS3H5EzRScyinmSeTIRthQLorAKzTXW7u
	KG1Mjr44Ps92oqda4u/CJ0tM2wMRFcgq+HIk5ejo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbd2bcb41-401bdcd4-d869-456b-9661-e4cfe76bfbea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bef0bb855ac0a18e51d52b84ea85090b11a44782b11acb146c2bc6038092e2bc
Date: Thu, 24 Mar 2022 18:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648146238
