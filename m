Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EB329A8
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 23:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651190218;
	h=To:Subject:From:Message-Id:Date;
	bh=w2tGh3MxC5SdTYmI9Xeo4h682qk91A589YuwBTg+b88=;
	b=Ixsogzjh/QuMg5/pb4Q2GJcvXDwxwzLwdTY0M52EEU/UVH4nmV+7QuLrWsWq6TNz
	6686Ycnmcerf1NhfYNbkjX/B8460gn2oarGx/j13xDeiGWeCLXn1P4II0sX6rfuiweV
	0EUJsYrKOEeQGgBBK9qicDVw+5Km1aObPdlANntw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651190218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w2tGh3MxC5SdTYmI9Xeo4h682qk91A589YuwBTg+b88=;
	b=X5T+xVVXPDrbBc+qB3CdztLQ047blAuzsyq/CCLVlqlAc4RImZ/pMakBn+u/aflN
	dojPlTGi9m2TsPPiMSZ4WwmGpV/vlcUlHl+GJH/ucfsBwLXe34nR1mstH6D+In3BpMe
	Jx6Ync134y/sJwF6aH6icbNRt1eCOwaQ5v6NjkkM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180729b3e4e-749d31df-4fdd-404c-bf1b-f027a3f0d3ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c38420a080d3e4c6297a24793df469585bb97912a0cc2be19d93fba3685c25ce
Date: Thu, 28 Apr 2022 23:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651190218
