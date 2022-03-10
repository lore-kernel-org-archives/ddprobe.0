Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32D77A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 06:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646893585;
	h=To:Subject:From:Message-Id:Date;
	bh=PR+o1zC4NzEXZn1wIHJNvQw/5i7sLa2926eV9kxt6Jw=;
	b=hgjldgmLdzteAxh8IRZU9FUZ0KyAT1Tn7KiFVnnGUGWNahPbIBLqsvSHoKFSDLDS
	/qQJQWwpAAZyq538zmuMnAWDuti8T6pmcg84/Rq4pnqkoIVy59tdndWk7Ml8zQdl67E
	NWUTGUWIQgP3IkelCAwmlYy/bbUscDWGcq+fkXec=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646893585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PR+o1zC4NzEXZn1wIHJNvQw/5i7sLa2926eV9kxt6Jw=;
	b=PxbbWGeovMC/QazXr7WetmcvEjJfO2BEqRwghPsRBO5xQQaEdHHbxYmu5O0dzwsG
	FiGZSr/ybDHl21eVQs5LPGu710XO/MAwwkQNCuQfcCs15anML6rkXvQ4Ivz3TC9hbwg
	cAP2mN0H0myhW3Z0230Sy5LFvbkDtpCj5Y635oz0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7281d188-3288a045-7925-4a38-bed5-40a57c16243c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 758d3fd13860a0df13e98f7b66d2fa4ff7651b4647e0942566c819cfda68f956
Date: Thu, 10 Mar 2022 06:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646893584
