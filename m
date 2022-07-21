Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3FC2567
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 07:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658390212;
	h=To:Subject:From:Message-Id:Date;
	bh=OPE3xt5RMwTcZmJJgz7GXx/x62IHXEAzPAYm7ayz2K8=;
	b=UCW3hBAh+W1+nubkTPLLZGQUqdvjVLdRTgdNqv0afGbXUqnkfQBWdXod3ZFF9Wtm
	zfIVxc10nBOy6RbXMhuM0+/waUR4HQKkhipxK/xcD7u25FIYP7rLBLtzHlJaR3ACXM+
	VdDZKP3Smpk5tzrXUthMpEQQu+VNNLXLRSVOZxS0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658390212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OPE3xt5RMwTcZmJJgz7GXx/x62IHXEAzPAYm7ayz2K8=;
	b=d3lK/QL+vlU2FK+izrhrmn+U2fwA2UPkZBn6vk+C1kl5jYGPbuLymnEFn/+WPKAQ
	U3urtEsLuJyBKa0+J2BIK3YAeBsRmjBOt8fYk945OpHfATIxstjPVq2mYLTFgaEEsVI
	nmWA00/fcB2jpC00r5ZmHgb6UFZortAmmvE116qE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821fc26eda-d8dd7c63-1e14-4c6b-9442-21ddb8209300-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94bb1710376eec616cc6db80982fbf46639e3971d5c6e614b0b7a248ded4441a
Date: Thu, 21 Jul 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658390212
