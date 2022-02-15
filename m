Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C1DC116E
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 04:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644900385;
	h=To:Subject:From:Message-Id:Date;
	bh=TsvMassajJ1jrVySoienqYP6wk8ax/PKNt5qvJ3bL2w=;
	b=D2CF6K+EHJejea8ZHsS7FZsC5mRY2wLMML8vBWdxFLKExqy9aLzDsJFulSU9Sp3e
	cHAq1VqDiBOAGSnkpyTUAl2wn4xhl4oEzuV1IUpZ7CTAuAPnTcIilp3caFVN3UVoHnd
	0vEyWySmLSl3PFveAM9HTBfSLfuixdXuvWHQ9QXk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644900385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TsvMassajJ1jrVySoienqYP6wk8ax/PKNt5qvJ3bL2w=;
	b=ChqQZKtxrpzTm9c7DN6ofA6/jFXi/cEvgBRH6UQfhlLnQ+gtRnL4tAFhDROB8gwG
	xv/UXITgW1XRAcHHZEJlMGghO08WlPY6tEVeCin7C25YvObmLB3/+7g00tjS3k0aq9r
	DdrxOm5LYJLFVklE4EqjQyfBo5CzEVwEVK49uUJU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efbb3ffda-5eb2eb37-d3a3-4686-a005-1ef4bbcb7e18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e092c1a186cd8ca4a296f57b27dfb42f091426e5bee69a1db2348c849f81845
Date: Tue, 15 Feb 2022 04:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644900384
