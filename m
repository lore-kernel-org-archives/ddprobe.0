Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5222BEB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 22:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644879384;
	h=To:Subject:From:Message-Id:Date;
	bh=fFJ6bRKAKn3lHkAFQvCjRPZOJ4M+ddB/K4dSHmhZuDU=;
	b=Syn3CZWB5ecU4oVQlWYJwKCb15d0BPTLD8onRfwyCwA9RtCbL+rQNGxr4YSOpiyv
	3W+v/EMxxR0Vtrp1CSJeudElGxraGLGUnthsHMzgY7exNIhEtePG3XUQUbMSmRnoF50
	0eS1K+BlSp02TiK7k1DourLDx19DYPRUjyaWWTf4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644879384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fFJ6bRKAKn3lHkAFQvCjRPZOJ4M+ddB/K4dSHmhZuDU=;
	b=df9RWr2OlSvXspLvXTXYsy+d61XKAo0fa0cCOGaqQTh6lAT1xaDwGrRUJPygHO8y
	UK03gMpmGVNaqvGr8g6xG+/jv6Ez05GXO6uE14MaQY6lsENi0sMJKUjWqACspOFveQh
	IxwAZY08q8FvFRNYhvmE1IqhdVw/G0OGILXJslnA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efa7390a6-f0355e29-7c42-4239-b706-20eebcf37808-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24e84aed71434e7e638157e95a85e3868e0d8d5ed43d4a9f007c4de7bed7f689
Date: Mon, 14 Feb 2022 22:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644879384
