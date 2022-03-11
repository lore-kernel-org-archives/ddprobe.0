Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E827E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 04:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646974584;
	h=To:Subject:From:Message-Id:Date;
	bh=itD4zuEtI/xvQ4i7Lr4zig9y9S4CxraTuR6e8fFxezE=;
	b=iwtffPdOp0FHDonrkPrvSfjrz++TbE7gkac5wEeGUEhT9+a8YBBSIHLptdwB6Tvq
	EeyBq6Uta2qNgjTsV80QshbWXGkqWBWU+piqXZjil+fcPwI7TXjfbkRu3QCDJmCX6Pw
	F9J3qAHpVBb17MP7sB7Tsq2CuVnNzpwe8/sua9Vk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646974584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=itD4zuEtI/xvQ4i7Lr4zig9y9S4CxraTuR6e8fFxezE=;
	b=FStZP89v480rs9UAAA0VAiKSWNQu9SX2j0JzNoXWX1u8NVmVQpYPF4GiHDKSPmCx
	tIyffRaY381V4lBfIwwoaaqX091jmgttR8RADTSRtPWwW2ExQjhOE5vdO06VTsFYDC7
	ch30UTqaii7cxjyCVm73M9qEmcDjzFTvFEI/A/yM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7755c7c9-16f62a90-03ca-4f0b-a057-ff341201a15c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d2209a69e6de71e5c41498d6d770ccb8e9b7dadd502b891b85a4f120dbbd857
Date: Fri, 11 Mar 2022 04:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646974584
