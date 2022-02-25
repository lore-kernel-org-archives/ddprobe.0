Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19A51FA5
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645813885;
	h=To:Subject:From:Message-Id:Date;
	bh=17xRelXP52eRzvpt8EnIn7P496pJ1Uw6NesZE3Q3OZ0=;
	b=FAJ2hNKOPd4aotIbgyaiPEb3e1wpQqoOIPj2+hsJm+EgoJ9JiZmypcXZrS8Rg51O
	V7yHOGhJ6E8B2p/nLTJmoHAlZTXqivDCF6cmX0smQk1sK22yvawUPzDIUddFPKPybuy
	dSunMNHlmr79O++MauDymSEbaHyv9Z2jj/JAmFmA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645813885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=17xRelXP52eRzvpt8EnIn7P496pJ1Uw6NesZE3Q3OZ0=;
	b=cbKJK6ovwBonPQt59tath+u+Mq6wdgp1J8aVrevHOeaiyDL4w+TTjefoJf5ovtkt
	ELEBCpHKBz1jjrHCQsUSej8uwM33kHbIztu7WZGOoNcD2rvUIq27gxEWNs4K/3WOOUV
	K7x5uclGJnU9hwRsi7j8HKBP1+Rl3I7rQHeZHUTA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3226e759-c644aced-fba3-4085-ab20-0e558a62d24a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01abefc7aed7d619a1a4995bbfffa5db56250f582aec885fe9e3734aae458705
Date: Fri, 25 Feb 2022 18:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645813884
