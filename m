Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A789F211B
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 19:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647025885;
	h=To:Subject:From:Message-Id:Date;
	bh=fM903LhA/M8ptmzOF+TsTmtQ2HIR0mC2Gd9xLJOBGg4=;
	b=WsORhSlRCYfu0mZ2EJJqZciYa9hP1y36/KtLb8VsUmRSzitQx0s7RfhbxpNbh3C+
	U90I8D3vcc72PkzWSo9HH4KdoJDJnVmh3cyRfxnJHNJSI9Rxo0gN9XTAlaSnh55ClnK
	U/eXNGrlzfIpoeOODaGzEDAbfOQdMgngyIJTBwfU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647025885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fM903LhA/M8ptmzOF+TsTmtQ2HIR0mC2Gd9xLJOBGg4=;
	b=YWZ/hzu9Oxr6pt5LKcPaXZcEVqWHDvDr/JvrIGSG9R7ptnNUkHsC7iPY8+lru0NQ
	mRD7ZvurWSFLRC5o4Uv3sktkGa+12lWIyHKKKxtCiMZdPqlmPTdVBQujm/ngcOQWjZl
	5X9N4w+XlpUr7G0jOMYRJ+8c7muxHc+lClaJdWHA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7a648ee7-52086974-2873-41ad-aca2-2cab67d695bc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 384d85a3a0e6d47ffb765e0d3cf0bec6bdb9d4b45a640c4d7ceb64c7184aead4
Date: Fri, 11 Mar 2022 19:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647025884
