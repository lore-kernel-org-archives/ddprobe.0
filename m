Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D306121
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 22:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645394485;
	h=To:Subject:From:Message-Id:Date;
	bh=0aTPJpSTuH6W4EqNXCPEt31C4HjNh3ESNi/gO4eYcVc=;
	b=SitTCoX29K/77xoqoHxu2BfNRbTuwNfKVtzlBibLz/0vAxDAzlZtf3HMZr37B86r
	u+b6DHt8v5wHXm6LiBzGjkDM8BCfMTD/KIBCYrdNlYdNz+Qanm7/4FuwGHD5eDraQPu
	3ZXzdMiKtBKIUdeOaQxghvii2BFvGCV7FP3ESw+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645394485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0aTPJpSTuH6W4EqNXCPEt31C4HjNh3ESNi/gO4eYcVc=;
	b=O7JhrsmMT66mDG8C63PAaoI7QNB/CdCR3gqmv+B2CdZzREU4VJtIMQuqc/Yx90wc
	9wsKshhRSsdnPvpNzmuqET05TTS1EB6DbYC1ikRzm2oTIQwdoB5xKdqIR/W1mmjfNBg
	OlgBX5lttyG3GS+sdGvPqzguileEgk7OeBZYqfHw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f19275e4f-3ebd1ba2-387f-4a79-a215-786a5cf7daec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d06f8647aa3c77f6ccb2601e5b671694d3dbc8e0702b9725bfe7771ce8da9c25
Date: Sun, 20 Feb 2022 22:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645394484
