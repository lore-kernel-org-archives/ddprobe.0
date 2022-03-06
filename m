Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AC8810EE
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 18:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646591184;
	h=To:Subject:From:Message-Id:Date;
	bh=So1UeuwhgWcirK2nkskj/40byt9wTOxMcSlvN5FoyJQ=;
	b=IoVRpBOeFIPhRZHuJYsFdb5f2VC3wg1HXrzVFckyNSN30Kb513KyCProcCVMbGYT
	NQqwdcLJdSLtFhOMTW5dvEXC+eQXvP4efHMJeIgTxGUjrS7kbKOn872THaoZkHLxce9
	rxJmuur/eIw9Fgiq0HCpgw73FjOEJ44BtY0OK7W4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646591184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=So1UeuwhgWcirK2nkskj/40byt9wTOxMcSlvN5FoyJQ=;
	b=IRbJxi3hhmp09vY7SagkqIJWtbWyLihqqCnEfiD7kyisoycTvLcrZJCFbnX5H0VW
	6ZNZn0aBfftWYPXq2hidc6M1ozvmmhRIBNdTIdkZT6P83Bxc1BS+No2KCc1FGZIScix
	iobX1sh1gk7rWJ2sV9NKW4Vh6rtCN09/x8RmHwig=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f607b8f6a-23b11027-156e-40cc-ab6e-26d01011e23c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71d33baf3b8535a71625ed3b5b8035796b3e705c5582ae27f8dd90cd29b82b60
Date: Sun, 6 Mar 2022 18:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646591184
