Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64C3C17C0
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 23:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646869284;
	h=To:Subject:From:Message-Id:Date;
	bh=Ewe79ono+qr5K6Uvh1A7JJAhYikfg+3bzlkbo1tKqwM=;
	b=MqrBwGGarqK0V4BFAGNAKbf6idXEgZJ2t8FWR5kGGNb7TPFRHXsEBMTTzHDpFJDq
	Lj/JudcHGtoCv26aXpijOC9m2i8l6bD4RuATjb/KzMwb7HEZZBULdCoOTEd/JmbHP5p
	eg/2t+DL1Z2+X8DKj1b1Jze3KeOwiaHWk8TTkXdY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646869284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ewe79ono+qr5K6Uvh1A7JJAhYikfg+3bzlkbo1tKqwM=;
	b=E7wceL1EQFUKHp+OanawxTkjWeT60VeFNk1Ly/VBGage/7DI87Uftd0SdVPHsGE7
	dKaQRwpQCQ81dGeaw6d2huh3THPFA7ojbYcQj3GBmeMw2Gv59JkfjB69NHuF09w/DsV
	nHsww7rKO58KWl7mnWZQ7bkxREHtgeifvqFYlY7o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f710f07a4-2d2c5eac-a3e6-4aa2-918f-9768842c0617-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a76abd4cf82df6fdbccb4f02324945801a710c3f112748950de6da769b845876
Date: Wed, 9 Mar 2022 23:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646869284
