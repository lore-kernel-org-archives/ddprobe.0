Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309677E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 00:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648340698;
	h=To:Subject:From:Message-Id:Date;
	bh=010WVOZuZTjitOvLpHxz2WORfi9sdcxQ+4TV/PErSf0=;
	b=WC00x22B9Yd6NGPhFvX0JDEhtdYb6CgyUmg19Tqon0JDKK/N1cBC8HtTbrGtSPwD
	L32y76o6ztlPD6nP2UfW0u/kALwe9gBo6O7bpWcn+byg6sD2gmz+WiTDqbyhDsJSJ+X
	43jF7KGDetFNV14b9OMg8PMjvrMxtXULdWCYKpXM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648340698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=010WVOZuZTjitOvLpHxz2WORfi9sdcxQ+4TV/PErSf0=;
	b=TjIa/wVULHX4e93gQHZzTtYhjw/aXBNT12hRffIMyblMakGHiQ1kjjIqLedsd803
	jR3onD8GLWDOfBNzzmT410U48+piJ5THAkwy8hweAepLj2IiW527p2E3NfG7R6yo0Xw
	fESblx7yXMrJDWWZLQeM7m6wYUIIjNHuNcwQf4eA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc8c304af-7f2e5398-d9f6-4f4b-871c-b14c5140df89-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e720eb77e7e053582b38f26f38a9d4a405dc4d9684ff739c9fe3d6e734ea6d2
Date: Sun, 27 Mar 2022 00:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648340698
