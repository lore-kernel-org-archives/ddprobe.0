Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4D2233FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646240485;
	h=To:Subject:From:Message-Id:Date;
	bh=BfPfgsZyRQez+CLbIpCaNXArjLOTrk56tJwP1Os3p7g=;
	b=JQ++XUrNaWDGaO8TMEBeuC8mSWcmHBqf/IeMneerX+6mSV8CUODdiTzEhPNwmjYo
	mfQfkCY5TxIklqpKCPkDJDMqoP+BjdgklD7MNXI4FvtWBQNQxSB3TanWF2eZwBjRKbs
	MN7JNJExs4+FL7Le5xppESBqrfsDOOhDWkfpmfd8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646240485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BfPfgsZyRQez+CLbIpCaNXArjLOTrk56tJwP1Os3p7g=;
	b=guJnPDpeStDHHNZpAe1hE0b+P/RocpbqUGlvWZ8l4pYs6Rt7T0+r7UwxpsCKewpU
	LI8eD9zccBjOsrJ4zr6oCyz/U+jgaI4KfxdSTqgDN5OIV8CC2p4seuGwjS1Ccfg7Hbg
	Dmjsd6OelsOIVHzYt+vmNffGC6KItbBOPW9MuZac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4b944ec2-92d5f496-56c1-4ea0-88c8-8e559a484dc2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b65b5dc834daab73b1602e3bf2d665c0e2c6bce7b4d3b2c69ca96245cbe181c
Date: Wed, 2 Mar 2022 17:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646240484
