Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD4D77A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 14:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646921484;
	h=To:Subject:From:Message-Id:Date;
	bh=CsPysr00p6vSpUCKs2rz9T2XXY+39zmgpWNQ3idvvKA=;
	b=CYbY+XJDw+G/MKqbUFYiu6ObyrapXPjCWDK4WszCGlTaPH7w6HdU40l0TWu4PJg3
	MTwd6uK3CyUXRokjy8k+V4WR4wLe7P+yVHS+1sepPq2FD9xVlFya2p2AgJiWxNlnxj5
	w/9dvk5Gicfb0lztoqUh8HRlrEa0hgla5u1FP1g8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646921484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CsPysr00p6vSpUCKs2rz9T2XXY+39zmgpWNQ3idvvKA=;
	b=K39/UNJE5/g4IqfvMUZkrD7jY/C+p316xl9vuhP2w1YOtRPzpwPvhRYS0mp3GZ+P
	kA6bUckooxmmNUjhnHuqz8a2s1pQUvijnbwVzRNqnJ84bWpgKqc85DD8+Rh+OaB5D1V
	DAI2GnEP1sX2Oqqs8gi3URIbE1Veg1jLh/HnXnrI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f742b8a03-95ece076-23f8-4a0b-ad2b-86414f288cb3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b22d4413b89058e1187efea066c8fd3cf22c2bc42db7dc3a1c3faafd6a1d8308
Date: Thu, 10 Mar 2022 14:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646921484
