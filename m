Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 873F35382
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 08:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646036484;
	h=To:Subject:From:Message-Id:Date;
	bh=g+N8qBsaamH1/euTgnfoAvBFgykmZBX+nwSHrx2FFq0=;
	b=XAXFntP0IHveHtkCHrmIp3H+Dm6V0xqHQ2SsxlTp08ZN4A54Moe5HBTLe4uSMDBJ
	Zgq5Fm+9vNgTa6A4x5+vsJYdI3pIOHZkRUcb1CcV7r4v9Ne/3xQyv6zef7bBq6XP9dE
	Heltygsj3PTXcvnbp0a0xHkFZl237vwdoGFyqOcU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646036484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g+N8qBsaamH1/euTgnfoAvBFgykmZBX+nwSHrx2FFq0=;
	b=gjvdg2LOxyKN34oHg7BtbCgxy9/kp87lVH36wihUHZp0DLjlYajnITKJhuRe4VWs
	UopZ+REgeGE3+AbHZNs91dKa0IE+lrSE6z/vCmovc8n65DfQmGNnTzkbhg6p1PXQgI5
	xXGgJccJ8qB1e73T3K91LSx0qzC5l7UYr3CUHZ0A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3f6b823f-2a003258-535c-489b-b20c-7a87c3789d3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a6e43c85cbeed02d93daa8c0d4f28b9c9148cdd2a64ffe245385782bda947b0
Date: Mon, 28 Feb 2022 08:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646036484
