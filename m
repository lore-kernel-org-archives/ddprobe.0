Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F93C7C
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 16:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646064684;
	h=To:Subject:From:Message-Id:Date;
	bh=32UOuymvz2A/XQCxVC82CR4owZnceblawG7+gvxCpRc=;
	b=R5NEPhhucCONeUThjKL3e7XE9xHcFgF5JG/yjYVbSrraWv6XDUeBJnMYp/2P4bAr
	lHlV+TcswiNw81iRlaK6t2K10Cfnu5Dzlt7HBXZSxwYGVwxhebq/cEkpeAn4r/j+CVT
	8fzhHiTbryaclrPk6wmdszYmw2Cp+2kfkKodSoHI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646064684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=32UOuymvz2A/XQCxVC82CR4owZnceblawG7+gvxCpRc=;
	b=M5fkzFj95Q/OHp13vJX2DNVErAEwc4cUoS5V3DTEQM4MEYu5N8T7TT4/3/37al39
	DZ5Sm4cBWw4r+2i5o0JQacRHIfMI2RNXAUQ6B10uKyvK0xIEPrg9Edppac2VhTKihJ5
	59+xOertwhUku7amfjy52qPwDe1U/RFbClw01tPw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4119ced7-06bed07f-40fe-40d7-975f-cd8f4d45b431-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed860ab23bce4c1be65ffd9af64eeae5a33bfc1c9e4f87472b92ee3225a0534a
Date: Mon, 28 Feb 2022 16:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646064684
