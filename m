Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B5F210ED
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 12:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646571084;
	h=To:Subject:From:Message-Id:Date;
	bh=xatGg7EGpXxpaoWOWWZxnMFgM13waNthCwPuvb76/Zw=;
	b=Nv2qMyTdt9s8X3FW5FkPTyQjw4yX7jbYZMGS978PzvrU+O0nscRa/SyybO/N9aHz
	qrAhF3xl39HkmgyyhDGzl/ozPRyJUUOw0vPJYF6lBaSq9Cec8PIMAuZgW60ewOSx8H5
	Cs0+E17YMcAKVG4e2sCJdtr3EHncwmRdEuXWWnF8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646571084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xatGg7EGpXxpaoWOWWZxnMFgM13waNthCwPuvb76/Zw=;
	b=gYndwiPQ2Rpd9wg69hsyVNrjD+8nCGgV7Ri03/AXfTxq+eh5mG/xcH0/DLsmKql7
	RYclKBSRwTALSfq4k5boiBKXE3vxm16tjm8kMHe3z5O5r/mcuhljJZrFCsBq54FZF7b
	RUlsopTybvj0xE0Ue1kziA692K0dz4q1NCCda32M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5f48dbd4-58f2621b-d2b3-473d-b2d7-1c4197a82458-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da387b07f2136f26fc3da0d6f55c2f5a8eaf6e2bc6497d06bf051294ecff1f5d
Date: Sun, 6 Mar 2022 12:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646571084
