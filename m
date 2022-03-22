Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B705042B5
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 18:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647975085;
	h=To:Subject:From:Message-Id:Date;
	bh=xR7pMn+4znNi0GgoAdyVIBI2mkHJRE2mrwxi9RPqNO4=;
	b=hOCBj0InxQ2Cj/J7WMYOjJQQTVeOfrzAxnwIHzh31p1EHqJdxWpgMxUAWWLat9/X
	nOMRXVe5k56rkC+6UYT6E6OQBHZZbHZ+aHV3kqknbQsnOhMRQ0kEVhDLLRkPNl2nmA4
	XWg+ZPimh04EIThkuJMrrqWR5bqKa1NmXLXHFrqo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647975085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xR7pMn+4znNi0GgoAdyVIBI2mkHJRE2mrwxi9RPqNO4=;
	b=ADZJZXbHCTIlP0Cxb1VJ+uaGihFcZLQKx5BtadN/hp6CtS4SB0VzoJ70HMXi760a
	CkLBK6EaAOVp4VRS4/Eo8wCLq0lexlvlo7DJdV3h3dy3gf6LF6Fx01NlcNFV6xsM9o7
	W0kp7abs2IvEZOSWPQk9g8r/4P/s8a8YV1fHWZTU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb2f832d6-c73bba3a-345c-4c14-a8f8-f40bd478cb3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b005efffd5ae411f351f5c35b37cd7faec190ba269a572fcf5643649da01b3cf
Date: Tue, 22 Mar 2022 18:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647975084
