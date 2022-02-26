Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1823B21
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 11:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645873585;
	h=To:Subject:From:Message-Id:Date;
	bh=CmAFGAW7JntOeONOKHfxFJ5zIpyy8MN8IDXvnrcu4wM=;
	b=F9Dsh2w93+J5gKFoqgahcBGK9UelMO7H2AqOp4uANii/fpD6OjYLWSzeFQNBHvSL
	Awso6U4iChEYY3E4CWTygIoMCT3rxJY8/rkl3z5xKTxhu/4fnYJ07bFKB+OrDDeZazl
	p9keWpMl8zGGQIwDr4BrHKnrzgSgRVXlZu7P6NE8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645873585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CmAFGAW7JntOeONOKHfxFJ5zIpyy8MN8IDXvnrcu4wM=;
	b=jZ27VBOx/D2AT/+eiFW5TFIO/RSRFQr5jxceAc+uX5ZxEpknMHybalIAh++FwYzu
	NH1nMf+1gIc8LsBnRdD3p56lOOIAz+LDe1x87c9itCyTMyQw6bsRV9VMr0X+FvoHoLp
	trPVhwGwCYGEIfEwk8wpzG0oBp9ViF641JcQBMPk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f35b5db41-f2e9529c-5610-4867-b1ad-5b42c2dbeebf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5134ec2d3ffa197225a65deb68d79431bc4b3a0d9158418284826be993dbcc0
Date: Sat, 26 Feb 2022 11:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645873584
