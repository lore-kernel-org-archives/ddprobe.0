Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34332627
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 01:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644803427;
	h=To:Subject:From:Message-Id:Date;
	bh=tL/NRVNqUS2uOfZbw2bO8YEtBig+8ypIbSr0rRYcSCk=;
	b=O9GjYaQxS7CZ7LzJSt/UJk5BLw7DCbDDe1p2A0VeIYtzuSX7PQE5zcXLVc4ypqzC
	0zHsrlfPJM9XasUDXTp9Zll2QWOwTCnAlSkYrjaDFyTMa0sw17Kxrfb5H7lq5/BxW4k
	lkv3CUi6RCLMPIIUd+lI/aa3G1IpyrzDvsfX3T0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644803427;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tL/NRVNqUS2uOfZbw2bO8YEtBig+8ypIbSr0rRYcSCk=;
	b=aBswG4/ItmvJkUf3DYQAWa8tjx00LlNCJjZS+e0bZt+MZLIH65O1YdJGDtKaEU2x
	tBiPFdJmBqvnQSF51VpuRXUTngIOamG0+aZ9k2d8xhp079qVTHxFuv9ytRP4222Yzxp
	VDmXB70Vu3ZZlQJCBgCrit4HOuiABhqpfLF71G2o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef5ec8d4c-51f4f7ff-8f45-4d6d-ab4b-1af97e39dcf9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ffbfe1f16dc88973a964d67feefa8ff0fb940ab074d5de395c23b3c4a233d436
Date: Mon, 14 Feb 2022 01:50:27 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644803427
