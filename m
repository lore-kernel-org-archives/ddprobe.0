Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21EBC33CB
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 11:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649245558;
	h=To:Subject:From:Message-Id:Date;
	bh=nMpN6Tmdgtz0WV985do0Zjo33+U1w1xwRRccvZ21CPs=;
	b=lH7HptT1rmFHgcvzxWJTj+eLf0/4LmnEgUYv7Hj2/Nou5C27qAWfvx0qgyf0mITD
	aejmU8Q1GvC6re2dAAsIDnfVBK+5yQ4TDQM76kO1Dh+GddZLHmHf87BoeCtVaB7Et0t
	7mF1ze5O3V49sBM0W8FGr85lqHdngn9jXmF38P2U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649245558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nMpN6Tmdgtz0WV985do0Zjo33+U1w1xwRRccvZ21CPs=;
	b=CY8vw9stwGh0XBzbzHPFlj5H+w1Rpu5xfqIPHlQ27Ec9QVCe5mHotK/lURoDo33Q
	IzxWQqQNwavVzwSAEY8dFPSFGnCEF3gU0R8HmnLrgbkondzThzYBbB5bw6bkDFcso44
	Ru3zzipEBcjcg8SLGUv1YUXUsZpXSG7T7dNYM1/w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffeb215f0-9cbd668e-8c61-40b9-b26b-4f99923c8a9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4b5292b9817b15506e8144c18050572e4e257d41158c2e9cab2060553e514f2
Date: Wed, 6 Apr 2022 11:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649245558
