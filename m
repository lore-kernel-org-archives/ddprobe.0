Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF7A10EE
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 01:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646531785;
	h=To:Subject:From:Message-Id:Date;
	bh=5vT+oLaVVTBYWFfGx36tJFHPPlvyMLEPhYUFXGSiy6o=;
	b=L+cxhin49WCLNYkH+0UayjD97XRMbtW/h597tXfwg7Pw6sMbdPNfXj4UlFIJVHfQ
	9CQyoEPMgGKWrZ/i+KgotL2qroyQJxahxynaBUD7rSX+FnHAFRlwG3diR7H29nDZihU
	ivbyBGwr9ZkQwKl4NrnE+h9XNjq5r4UuuiP22HkM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646531785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5vT+oLaVVTBYWFfGx36tJFHPPlvyMLEPhYUFXGSiy6o=;
	b=hBFI1TC9RzMMkhUYUq9QO14GJ2KouzlLxCkDrCvhgrZGABYlWnScNmFU6DfvkhYM
	c5tvtSLjPLSLZbBIXduJHY04FhsfLnsSAiDfi2dwfxKIr/W6T8V3DMr1IkzK1pTFJhV
	ZOuk6kRPd4rB91mUZlWKb0bgvLRrOK9J7mbTcAD0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5cf1303f-8f80fce4-bfc3-4cc0-b9a8-7a710e57a96f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b4c704215569b5b8cd6064f755f85906a64ae9b32068159c9b403029f1a3347
Date: Sun, 6 Mar 2022 01:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646531784
