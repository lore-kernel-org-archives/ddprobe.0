Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 916EC1373
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 22:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645741285;
	h=To:Subject:From:Message-Id:Date;
	bh=Z9Ms4i/bdmlkpseKdWAakM9umFCzQdnpJBw0sSBOSQg=;
	b=QdF538bYlFN6SXjkKHYkkNlbJ3l/r+742N7mXXOqbSrOvWnVMOVKpx3ECMzCP7jr
	K7/7Xn8Sisu0FVvALSTJVjGpoUe7CHAFNn7nV6wrKO0NQLt4WgFvMNnz7TJJcsxvzGt
	+RShmytRCm56g2OVGPWoYr7AMXbnpzA/xWf8Zv2o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645741285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z9Ms4i/bdmlkpseKdWAakM9umFCzQdnpJBw0sSBOSQg=;
	b=FEc2XOmNUKoPTygZGR6oXDWygt1raYmPiWlUiY07anBIrSyySozV5Yp9LQqHzn8w
	SthCoGlxCuoZUbbVsdGo483sWopB7B7pC+B7XkEO2xfTggg10cfn6qEy4ygAMw5ZkHD
	tdgWaKJd04oYZ6Q2O9RHZAMYOlZ9xIFx49AzjuGI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2dd31da6-c9995696-b2e5-43aa-9cef-1a882e42d1d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7a7d7b752e18f5aa1232fc6a45b7d13585a99f159f4db1499a6799ba3d85f94
Date: Thu, 24 Feb 2022 22:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645741284
