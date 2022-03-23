Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B1B0184E
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 12:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648038384;
	h=To:Subject:From:Message-Id:Date;
	bh=lqrb13WEeEcvsNk2vkB9urNs29UzAkPIr2z3LwdHZAw=;
	b=O5z6D3VV3D24N4Rajh/nUpwp4tUuQadNtNycmPumNzZWYM4L9F7vXYhPj2xrPnof
	e1eeKK0A96rv8LmdPWAGjYIE7D+zt3cDTW6guJyveGgUlWkTr6XXemkaHwB/XxI1tsr
	jyO8cqa4HXLRDLpDeAuRFetTKjuPVN97mO98ifzI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648038384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lqrb13WEeEcvsNk2vkB9urNs29UzAkPIr2z3LwdHZAw=;
	b=kcBjXtlSbtQNCBELeA8wG0lSyi3qsyNX0keKsI/++2JI0xL7h5XWedJ7NAXrovPv
	RoKN1EILeh4vEJ/cKV/xY/df21Dse4X+hELVUrWJYnxBBB/pJj6OrNOoH9/5/LroHev
	g1ouktIfiNIT+sXjxI2RkSYZ6IaTyuUCx0R0CcJo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb6be147d-aeee3440-5d25-4486-8be3-9d7beb8e3958-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d59eb6e68dac9460c7f10e259272cb90cfaf4a63c7200d5f6f8a3386e44d6534
Date: Wed, 23 Mar 2022 12:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648038384
