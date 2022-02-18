Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82387323C
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 07:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645170085;
	h=To:Subject:From:Message-Id:Date;
	bh=LjEgR9FPhjbOQ1TJVA6qaHaHKI1iwyk16CxQOf36qrE=;
	b=aca7mGUoj4+dK9VEgY9kkuQ63n3/8UgvOQmlPakgtxR8iO9sTu8+JQtWQslRaKFp
	Hepzbzfd4OU5/ChW3ge7OS+AtMPIQNokODOQ7cBgjg1T3hvOHfNFQ2P6+3Zr8BQL656
	rOlNZevRPG3LLIJd4KHTODnmy+o7SNZ08gsP1R1s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645170085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LjEgR9FPhjbOQ1TJVA6qaHaHKI1iwyk16CxQOf36qrE=;
	b=kKLQ6ZZ8iw58FaTkntutzzyzhhf8iHDidp3qeCrMN0cCQCo5XpzkyjOP18RI2Bse
	4GY6Rc+O9exng66nTj6X5wKcs6cnfpPZdR1xi0VpbDyyvnZ0wJXHDYwRCY3FtBOc6tg
	/V65yqxYVNSQdoEmy9REtIr+1a5ttDZcktMo0j0I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0bc74b75-d6f2ea3c-2ce9-4436-bca4-84190f280022-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98e4b78248ca9f4b3555bba29bc37d607627c3c6b24e58304eaa5ea9f50c4820
Date: Fri, 18 Feb 2022 07:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645170084
