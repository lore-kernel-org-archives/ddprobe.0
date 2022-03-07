Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 933C37A
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 13:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646660484;
	h=To:Subject:From:Message-Id:Date;
	bh=O8Oz80z9g84gv9v05rXyU4uwkx3J3uGbn7s+XEijRD4=;
	b=aA15GpurMJQrZdBIv/i2IDGoFHhEO2NMVX3f71ixCDKCEUuobqUSnGOVS1zSvXRg
	IfDdow7gfxAImUfgp2HsSVLhHMDTu7tpX0GXOr6/VK0TyYMMomstsjnRcMVhU1twbHe
	+5/zC6AXYQJi8k6yKhCeMhsq5Vagi9vf3hlTnVw4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646660484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O8Oz80z9g84gv9v05rXyU4uwkx3J3uGbn7s+XEijRD4=;
	b=VJx9vgYB7pzazsVwXRQymkAuvElbomlDiESEwZH92/jQ4yGzgixxKesj/3HXs4+C
	dKLibR788H9Dn6KiIBn6mBrTOliKhQqkDujYeG2l+b2kE6KcHqUJWufOVgeu4w5CQak
	xjKXP+6vqEp6D55puVmQfTyjcO4u0MXGhP1FNjEQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f649cfe99-8873761b-5f58-4031-9b83-467b21625470-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6020c12ce7605036d94ceb0e8ee36058f1d4298f4ffa1bd26b735ca93056abe7
Date: Mon, 7 Mar 2022 13:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646660484
