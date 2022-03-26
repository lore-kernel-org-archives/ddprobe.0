Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99FDF7E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 11:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648295338;
	h=To:Subject:From:Message-Id:Date;
	bh=I7QIV6P3Qa7GoQIAf9rIPkoGVIt3W49pPBSh0VviV10=;
	b=QdxmiOzaROkCI7xvH+rvdjTndGM22EobJ0/KCnvtFovFhYNVjNRXgC0wlZSurEs2
	p1kP0K76XwdfYlIiyzy89rczTTqgI/hdib106T41vIdUjuLYQ047pu4xeszayiFPrHk
	P8QkM/j1Lg3/KAU3vuRFMuaxILmyURvm0W3/+QKQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648295338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I7QIV6P3Qa7GoQIAf9rIPkoGVIt3W49pPBSh0VviV10=;
	b=AcY+Yj/uc2RvbAFn8VpHbJXSsUyXULSTWvcsBk7gvmoqaSXfVnyD3WffOA80dHBc
	rSjHFUV2h1BU8aKBzYztpFWm6JMw1KfM4zJhJ1Hhw/mflNEuxugiVUV4kZJKa/b8YY5
	BzF1KNFDYKX+qU/lijFKnUaq+9rdKHydrIafnzvM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc60ee133-c05b407a-caec-4c33-a68b-8800260f9663-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb0cbafb020451c665ac64d0d96f6a5edc635186ade7070b51ae8f6718f83a62
Date: Sat, 26 Mar 2022 11:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648295338
