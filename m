Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DD247D
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 20:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644783647;
	h=To:Subject:From:Message-Id:Date;
	bh=q0A7N/x6pSlTpmXPoAm2+CARo8+DMlWU2pj3wmje+ZQ=;
	b=Z+q2x5KZmRaBdlsDWG0+4PnqdqSRzhwwJf0AfytNs/4GWI2I1oSqph4KzY+rMEMv
	C1dWXSKA+1YEIRo9OXTNO3ejSmcVKyHKc9icCjOi0pZ7AP9/LszQ4tYSiWf5Ax0bGZH
	dDsEZRw6b3JUaDn7dSfFQAES2UCLCFZ+Ya9cOlaM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644783647;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q0A7N/x6pSlTpmXPoAm2+CARo8+DMlWU2pj3wmje+ZQ=;
	b=eW8YuNFtoOwsKqJ/dFvbOfsvbOh21r9XcrRrEFqRQ5R5HihtQmUfP67O/gi1caQs
	oDEZOZo5cHxQGPCt12tUfqf3uqL6viJbuEB0JhWK8zxubOhhiECduqboHfwBAXaunbG
	JDUBIM+JsncqlnRXRIlURvZqQmayfdfzAVd+QpSw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef4bebba0-686eab57-b797-40e3-be8f-edca2f3fd67c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86e6922f63bde4a80e3c1eca54821a3f95e3198040649c84038ca3cca5e02a88
Date: Sun, 13 Feb 2022 20:20:47 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644783647
