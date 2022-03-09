Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB06D7E
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 10:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646822185;
	h=To:Subject:From:Message-Id:Date;
	bh=HZqfZ2/ECc1Qqa7VID/3ii+OG/V3XZgLgnwadDHnML4=;
	b=AIwUVfIbBNzOaU6+cuFA9pUX+0D8PBvPfLGHlM7AVEFgvFvpOv7LG3vDvLlf6KsA
	8EMTRNj3dS0w0dqdEAyL9YEieI9IpzHU0KVxhQc3XUm1U3EyLZkJetoW6KDtItgXH6W
	R6geo3gU28MWJUywjzzLAhh7RRfpvVvjoVn/xgSM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646822185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HZqfZ2/ECc1Qqa7VID/3ii+OG/V3XZgLgnwadDHnML4=;
	b=MXu8v58AFy6TJUP+eDIv0rvrFp3BWG7QHgieDvlzsQTrRwt5cQWqTGO5NNrXEg/z
	1nZlmcf4zThbAb5Ot1rkq8+scmxYSX2mZ1rAl9rJ+0CZFjHf8g/WFUii+4ZUrl9DaI+
	2/+seEg17exYqtNYmjm2Sm+mpW1I88mBxyOPAiiw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6e405721-720e8557-e6eb-42eb-b5a0-aa7df28cd34e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4cf1197cad4e877f5d6ee5cf779953240e6fd7040b73287d74e7587f7e59cb6
Date: Wed, 9 Mar 2022 10:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646822184
