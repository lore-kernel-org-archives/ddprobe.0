Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA9DC10F3
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 16:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650472258;
	h=To:Subject:From:Message-Id:Date;
	bh=S28VRV6arQGpe6+dyPzv2iN90TXyEVXwK8X/ENHENa4=;
	b=UiFQVNwKWQ77x5hEjFGjaOLmzpiFwdociOb8B7dLh5tufD0jCWVQWlZ01hTQrpG2
	JxHdPkMWQ8OCziJhzMccyJ/EW7zjhROxY6lcHUjasBC8iMdwdAbUijtNGB/HmVnEwRr
	kAUaWvvqnoSXckjhATR/VD8oVkP8qxYgG1nyfgVs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650472258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S28VRV6arQGpe6+dyPzv2iN90TXyEVXwK8X/ENHENa4=;
	b=d7kQLCuMUq0Up8/1FK0EeaT52kLSR3PXmL1rbCecKUSfAjW+68sfJQKbpH0gbxRC
	eMX47wLnaIzOTxNIh/j9y/KLu1htndXIYMeITo1kvne8cwiKPZAO1RxZsxkrkBo1hhb
	gUrn/hDEyL7nA/9pRj4dsvHAeaRv8DmcSkU/LP0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018047d00ac8-6440bbf2-0e0f-4c58-b4e0-85f4582b5e44-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4806a8be0b406a9b96cc8a2922c173af14d617f165109ca6707032b58150e63d
Date: Wed, 20 Apr 2022 16:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650472258
