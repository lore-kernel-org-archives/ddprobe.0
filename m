Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623E623A0
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 13:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647352584;
	h=To:Subject:From:Message-Id:Date;
	bh=cDT1cgIXF/8sBERJodCBM2SQej3Me6l9sBa8hKZWppg=;
	b=k7CFXN7QfR+FxPMSB/HRuoe4Facd1L9w/+75vc1f+RpwIlTBqzEv+SsR3HKn6wky
	x65K+ssUlTLP8qgdYNWUFb2kYL5HZG3iIqF0JSNZXx77Pmh7RTrC4BLFhWX4qiaFK8u
	BjmWOqp/4z3EfQoU2tA2qNkfWrvBjz1E94RoNv6o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647352584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cDT1cgIXF/8sBERJodCBM2SQej3Me6l9sBa8hKZWppg=;
	b=X++apA4JYEfOkQW7zOTyVJa9jpfcDkO8NrM3SVUxulY6rlKcx/UtXHDEXDnw9v8s
	h/sMshsdlE9jdXbG7A2Mf1dFN6QHPzaJfEL4HUFBbzIW40895Mpqie8Q7OPofkPZM7a
	c8HmkCsC55mMWsF3sAUEzfxCNeSEzUgUnjoQir4k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8ddd9a28-2b42f7ad-e161-45c9-88e7-236d270174d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 121db29d4e10bec3651eef7e915243821d95f22f6d1630bd89e8a562cb4da09f
Date: Tue, 15 Mar 2022 13:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647352584
