Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C31472F3E
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 22:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651443478;
	h=To:Subject:From:Message-Id:Date;
	bh=ZeJJPr8Q6iEtKPSIzPr5NzoM/h+p8eBS+tq7J7fT/5M=;
	b=fwKUv6MaLLZPFlZuK06PrT0DPkgYHOdbhSIWYDP56nwvD+XcXrg7ZW/unOl3I7wp
	51KJ9OMMpR4KIOZAmQoHnFSdmuyJG+4ZqvJVU1j/I9DC1v4p++jKl6wVNEzkGQ3q18m
	niTYxJAMro/djDW3oH6oC2hImO71GWi1wjwYcsys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651443478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZeJJPr8Q6iEtKPSIzPr5NzoM/h+p8eBS+tq7J7fT/5M=;
	b=YqSSYjpBrGqP9to5ruyPq8e24FiAEsnW9ji8Yw9FR/BLq1LEnfgCYAYunr/uE0RH
	/WUVVRfzDfnu3Euk13G14HaZJn7YYlL0qPrKGav3pY/qk5D78GzXsuj0RLj3vfUS3Cp
	Am1gvzRgRN5IOshnZENNo5xQb8lOZ0vuAySCXexY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018081b3af13-5420d42e-73af-4ad5-86d9-0978f6358702-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 224a6d49b88c3f54a8b5930f4bfe196d35c04e01cfd706d2c36385b8f491b665
Date: Sun, 1 May 2022 22:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651443478
