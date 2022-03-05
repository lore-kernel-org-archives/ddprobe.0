Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C8B46AAD
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 20:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646511985;
	h=To:Subject:From:Message-Id:Date;
	bh=Bw2cpxXyy5IsDAAQqyMQyQ2Mk4Hh77kgQWQzef7TXd0=;
	b=bQTEkt2UsUbJV5//X230OYpprf7U7S24i3Bnb3FNx3MpG/OFp7XTg6ckLrMoms3i
	fZlKQ70ZGM0BBLxfxTwtW0kgi+Mm88KIvMt+d0aGrV/JLJorRZZJ4MxQWgDuNYdQMHv
	2hOULUgt8F5pv6G5KGDpufu909AFP7fx0j46HfeA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646511985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bw2cpxXyy5IsDAAQqyMQyQ2Mk4Hh77kgQWQzef7TXd0=;
	b=d+lYlePxEULLvgkcy0+PtoOY9N51DUlheK1olx5mAICREUqlzHtbXUmVw9criS5e
	KRIYq8nwAGkcAZWFBO4vBe0zUZfp/aM2w4GzhWDf1Wdt30x/GZY/cR2LgoFidiaKqG4
	UhyAYJgdD4UpK4Z0N6Av+kYsZjPYNKkSZBdR7PEM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5bc310b3-c81f7146-8563-4b28-a06c-5d517a634202-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5580d1e1bc89552b6f0b88547384f4ee38c99b276e9b78a27e7a7eec655825f6
Date: Sat, 5 Mar 2022 20:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646511984
