Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 885807B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 08:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655541299;
	h=To:Subject:From:Message-Id:Date;
	bh=z6UYPzNeMgUkpDeF+ZkXGvRVd26HUTYGOClVOxV2wtE=;
	b=MYY7YgqDawYa6ut/Hch4KjSfynA1mi3U216kTBSP7JhUwYJ4NjDgM2EFs9U0Om3S
	T3sHxFDww2h2SFh9z1yrMJOaZSB5JghClHmg27xou3y+x1WYdO5SHO5miek/mxVtVL1
	zx/g7LeKSFPOnkbAYfsZx4StMx7PQwUahszpdRig=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655541299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z6UYPzNeMgUkpDeF+ZkXGvRVd26HUTYGOClVOxV2wtE=;
	b=G5b2bc0lOLpp5ItMRk7QFOHdvIHjgMngVVvv3UXMnqrBSdX211PWUgtgHP+obh2b
	RMBwSW1kOyaMku9lFqyzSvUcPbcW+rw6Ex5JZ61clEEQIiAE5X6LIoVBujbRaMYN8YJ
	dZ/UIOoOKLTeGPRTPH0zLYssfEY281+xOve47JbY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018175f3782f-a9d8e02f-da52-489a-9bc5-9859b348efbb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c63a1ca9a7d682640aebb1d41f6f6dafb25111c581667555e0d5cc6485f211f7
Date: Sat, 18 Jun 2022 08:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655541299
