Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A67ED1
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 13:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652708939;
	h=To:Subject:From:Message-Id:Date;
	bh=mFzA+8qTOrmmi0fUY9oZ+J/nmrOn5KzfpqbDCVhD6gw=;
	b=AyP17KcX/RMBqactCQ/7R0TYNLkT/2+8j9THvR46ha/Q55tZxHCoXkfDubHVT4nb
	jvzdsvXTjR12e7c5AOi/4Wuo2op6sq+KUsPMkjtL/jvaHr86q7SkmCETvlD3eq+evvu
	61qhVrp+xJVoN56itIUxiA7NznCDZPjvi13ylGoo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652708939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mFzA+8qTOrmmi0fUY9oZ+J/nmrOn5KzfpqbDCVhD6gw=;
	b=cUv7dhAn4m1UDgt/O2XTYSqTQfjrqnZ1zy1Q9pmw8r2/yn+PaJptpg5vOS2SmjFD
	CfxUauDyyShSHf1fQwcdX+n+bAewCPjXqi9ep0GmpjvCj0yt/HXKxMY6iKXXbjQ4zGk
	5RDrueShWY4v7nrTtiRDNKqgF7PU0XiQp9dmyCcQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cd21162f-32ef99fd-c3f9-4c6d-a82f-92a497b50238-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74ca3cc0202a966735ca417114f5da8198681f6928ab2bd22e0d728889f9f29e
Date: Mon, 16 May 2022 13:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652708939
