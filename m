Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F4020EE
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660990252;
	h=To:Subject:From:Message-Id:Date;
	bh=YTloWKog8HVsp5vXG8RU8bmpnfPZiAAyAreuMAQES/Y=;
	b=J5X8RLQWgh3lCdMGMY5AmEKAOlD85tyb6zq+buS65CxBThFWG131G8k2UhvZXFJH
	ISCFa7LWzFwgB7pxQHe9Ljw9I1vNX311Wm1ey9HnssV2UgmSL8ftOcALaRZFQznlB2I
	Ho+OVonYhXYJ/ssZx7Ms1i1yKdxYVQHIM6EhcP7I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660990252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YTloWKog8HVsp5vXG8RU8bmpnfPZiAAyAreuMAQES/Y=;
	b=Oi4Y45ufw+dWFr2SQRA0jUMfkGGEtGbbN/4FsMbkG9bBY2hxsF3s5ZtCZmsaMOOL
	AtPD/dqECVqyyxvGzbDG9T1hlRm9j5v3UEVpzmG0ElHn4+rIiUkmfKGrss5/zXuQPjK
	kGbK40SXICQ3icBy3hsnHkHfiQ/fgIAjg3CRLe0U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182babbe634-0f83a272-a032-480a-adb5-f9d5051b3d5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c774413aab2c25a66b3539f4f94a4be56c443891573a1372d157ffee8ff285bf
Date: Sat, 20 Aug 2022 10:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660990252
