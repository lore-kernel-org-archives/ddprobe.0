Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A94E621
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 02:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651025818;
	h=To:Subject:From:Message-Id:Date;
	bh=B3UABiCoS3ShkfU8lUf/3NESuqoIlO1N8RQzGk7ZvcM=;
	b=hYxx2DnbA40WNVMQ5o1/qkU7tNQvnVTe+Cd7W/GZhGpWbq5C5nRGQlvV4VPyShQA
	8d56qt++tSwm1qLaPBcyKufSnlcC0pXrbPw2W+2p/ZtSDkhSj2PygFTNYyPouzzY1xA
	AO9CuIs+sgTqG56uowYMdQStcXSl15VthUA9WGIU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651025818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B3UABiCoS3ShkfU8lUf/3NESuqoIlO1N8RQzGk7ZvcM=;
	b=Hho8/f6T9L2JbDw84yBc6Lbned339RvaE13+rTew8br45bRV/0m+IUAL4dYR46jq
	IEzOGiSwdoLzJRGtCS1wVhPipeqotiMeeMHYsC8KtKoN7FvAA7oG4nZ7gk80n3AvAmi
	q3pTM54fB1XRORBAYfEmR3/JGGMWkJcnLoCRtcp0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018068ceb2ed-a6364d97-b180-499a-a638-b3af8e9c1769-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c0b7446873c4037afabb81e6bfae76488b2c57f6441951c5d600609e7257828d
Date: Wed, 27 Apr 2022 02:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651025818
