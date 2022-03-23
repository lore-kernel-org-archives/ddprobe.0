Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D20CA40
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 04:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648010784;
	h=To:Subject:From:Message-Id:Date;
	bh=lT1bTysnpqqOq5PjFJmBfeWeQQZjY8UCxZm6fhYga/E=;
	b=k14fe1KocJQH3EIjHb6wvq+Z6O/MWElABGri2b/9Uvuv7GDyFGLTbYUeurg/bYw4
	e5vLlyiuJXKmbCs9Vs9NOS3De7W3GITFv+Chy3vBhSu5+ILxfZUcVpD1Om9/Fyxjo5m
	qb5fWXzU/SO9d6kFS3OGVMAvh2ggX8sLWJl8KHpw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648010784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lT1bTysnpqqOq5PjFJmBfeWeQQZjY8UCxZm6fhYga/E=;
	b=ZRc8HIqqF780MWla2XdKchdE072eP9WPGJiiNMP8VFXylBXC1gNA9z0WsCkh6Y8E
	xisfCi650qTLVfg2MC5MYRDAVlpWTZLh6mUZH3Y6fDh+wI8IIrE7Ly0X7/sN4MXvxtJ
	6YrbgmB4Y/gLPSvSYik78WIrwtNzM/EoDwcMIyHo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb518f00d-80a16afd-17fe-43c2-9c54-1fed373f8a6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51ddc7d16a97958c7d6c8b87cc1f4d918949b990a2cd835bdb9c08a84b379ee0
Date: Wed, 23 Mar 2022 04:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648010784
