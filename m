Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19C04C60
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 07:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647676285;
	h=To:Subject:From:Message-Id:Date;
	bh=zrAgQjeASPrRHMgzZo/i4JyMPeBY0Wj6UgSXP7jrlFU=;
	b=VCFG4qLBD6vfvt+z2AgXAGsgKPYhF7I3ohP6zbsN+x5T8Z8H90w8FqzH9zrqBc6z
	GEj63H1zITVT/kcjrfzHsr9Nlm4FO9vKKINOYaTQ4bv55EGCHHqaeQehOewSWArSjYR
	O0qb8fVmwHxjnLtO2z2hkDtG34iClnJ+5d9zjlgE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647676285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zrAgQjeASPrRHMgzZo/i4JyMPeBY0Wj6UgSXP7jrlFU=;
	b=juvnQRdqdyhwjiEE3ewn6ZMf+Y4fkqR6yOJk4rzV8mrVJTwqk1twywlicCbRFuYG
	TSUhcgOu065yqXKyk99b8BE8/837HdZW+xNB7H8oeYYQLYchLiDUF3ZV3N/9gGeRx1+
	gdH4AErIRjUIN09AtE8gwi/sQ/nyIBs2dUPWYatg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa128df4c-ed0699ad-d778-4a9d-b00b-ef00c380c639-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b12c99216753130d193945b646f72c4c63739f60b2f205aa32789c380f0d786
Date: Sat, 19 Mar 2022 07:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647676284
