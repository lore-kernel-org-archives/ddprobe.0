Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4844F7B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661318452;
	h=To:Subject:From:Message-Id:Date;
	bh=cAoNqzMOwd5MfbVj099chxaRZXekI2qoUMTERp+Ipas=;
	b=MyDrwCFS2bcsLUZa/y9FH7yCVldWmP6R/0JmnbWb/kRpuoCGfIFTr0bRmgRi0s+v
	o3xZursb2GU4za9vWUeipc4CB0nEIMKngUk5EZqVSncTCNU54wx6QFaCnp36IlCjB6h
	b4A9hxfp+znNd9f+9xsusOuqJsm/lHv/Q90rONJw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661318452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cAoNqzMOwd5MfbVj099chxaRZXekI2qoUMTERp+Ipas=;
	b=X+VzG7cD41KH9Gwd8YGkwK649Y9itGSqwaWZFMXBpGlgxRqDsH/MYajm+8NGW2dn
	yQWS3YeYnCDMPmJDrYi6XIJ147AHsmER+g+tO1VvgU+E/xiB3epHjBDZJ36Qv/Cbrnj
	edxTiTwCjOv0c+/7E/eAot+ApN7xLC+FqJK67Ce8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ce4bd554-9b7a7fa7-a8e9-4742-b086-5a7b594d6b70-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c88b973832b9f5e1996724268376e82d1ec4041b236d10b69a294c349c0f7ed0
Date: Wed, 24 Aug 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661318452
