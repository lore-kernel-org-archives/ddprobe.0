Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 801396AAD
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 20:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646511384;
	h=To:Subject:From:Message-Id:Date;
	bh=Q2H7za6tqAqjaPMLiRCBRRFaWGEhSFrMgJCtxtsF4vo=;
	b=SnSkuItSHffcmfE9Dz471sYeecKjnYnw60OvkKz6th4AjgaeLpEUdMrHa5Vq8MVh
	vBAcr8PKNtSXyFUMK9w2Ut99KylMsEffP9S6tl+WuHf3L+5daUoZ0glA2ssgKPWPU3Y
	4Q9WIm75mYhj7Vez7bwykEViWtucFqADddc2zmj8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646511384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q2H7za6tqAqjaPMLiRCBRRFaWGEhSFrMgJCtxtsF4vo=;
	b=Ru0OqZ7OtvPnXeJS+d3r1YC7EkeMAGuAzhcY0amZwNjsnz+zGcKBa/wdi5FESUYd
	KpDf8uHLGZVQ4KaOw3QlNHw51PjvRxThjt9mxyfCAtOkQiztljXEJjzkF1c5d7lRa5P
	eTNJ/a2n0H9pvILDdC/BmQktekWA0orVMtQdbyD0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5bb9e8a5-7330175a-c9e0-43dc-9461-944581978b9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3b7b0d6910031b4c1a8f205a27c7ef73008dd3b6aa834bf5254c2e7d43baa0d
Date: Sat, 5 Mar 2022 20:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646511384
