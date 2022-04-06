Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE3FE33D7
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 13:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649251678;
	h=To:Subject:From:Message-Id:Date;
	bh=KWKPAQXYdr9qrOgUor+4knYvcCzz9Mhucx0ZWezWUIw=;
	b=ftFaU+JXpvZGA3o3IyLHDmnvhSB3wlRBhVUbYym2dfX4hXZKx02U/lWuwNDBed4C
	0h1/y2/GTzqMAd5FUgtbrHD+gkm9WriozMXg2IZZpq9zmQ2Pwu1UXGMkHp39GnOsPnP
	h5YU3qkokerByTWDhcwpFhv17UPuJkpvQZ9i46FU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649251678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KWKPAQXYdr9qrOgUor+4knYvcCzz9Mhucx0ZWezWUIw=;
	b=LgqxeI3TDVE4CYQFlK+iS1WTiT9E9gIwu30myC/AGSlCWY+nEsFIzcv9glN/0Boe
	Zyn1i77PhNyRybfx3pSJefI0XEra2mL37EUCWMadEzkUfswhgIWR16EUKujkoDTi48v
	SOnx71kOB6kuNF1+EZMSKpNLunW0eQWly/nuxuvA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fff0f7846-1077c4d3-75b5-4f2b-a227-5c6db89c4ab4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a59ad21989e6716fbcc465ebdc5e306a5ee2bb33e41d3e78b77737e4f6d1190d
Date: Wed, 6 Apr 2022 13:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649251678
