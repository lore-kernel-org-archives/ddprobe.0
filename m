Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB8417A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 03:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647056185;
	h=To:Subject:From:Message-Id:Date;
	bh=4ZccIp8DrgUIEgw6X1AMOTS1qEq3uK/YMiZWL9MwQbY=;
	b=Ma4u8UyTNKnPzyFtuTslJK4KOvTXidgjnqfR8qd4QUlnvxJdxgXvsAOTEZ0wp0FK
	ovQqa8rstn7MdNoZGSP2ffoclZWh8vR0LUtxeuhDiYgn5e/9UzszwudS4NUrxHWox7g
	HfWBSOTiU6CQ9gtXQgBALFfsZZq5I3ydAYE02ZEQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647056185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4ZccIp8DrgUIEgw6X1AMOTS1qEq3uK/YMiZWL9MwQbY=;
	b=caEmIfuOzU8wAts61+Bfl6Hf9A1nHMSg4evPZzoWo+hVL4X8fapi3B/KseV7G55Z
	DLDDwtaAqVPFb0yyzUKYc/86V/hjxw0/eP3xWRStQLoTKa0myaJiRvlfAOWRFKqNo3k
	u2Ilao2XzCOdDDlYb4n+jreOETBwK2ZXrnFo/ces=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7c32e5ce-9c45ff88-16c6-480f-a6b9-e2ae128ca233-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 56090e816fc9a5f22dd1d4528e5a598284359c1f7509172826a954dd477cf321
Date: Sat, 12 Mar 2022 03:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647056184
