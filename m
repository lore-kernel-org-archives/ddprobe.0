Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499437E
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 17:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648227658;
	h=To:Subject:From:Message-Id:Date;
	bh=dtGJNg9tyxbsv+QaS+71ycYvPwjh1GeuddG00by8klg=;
	b=JTbuIZEovLBCtx35rKWaN/3mJmCidxBDxd/RMLl0Il9NBw96Q0tk+a14Mvf+yxm4
	l4E8a/n/IHwDvR/iwQB5OEWkpIU3Iq1yuiZWqkIX6nsTb1C5lkypm4o7OWcJ7MLx4xT
	LxNIgW1slgvqcFTeClmc6pL3CXHD0zgwKHc4/iXs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648227658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dtGJNg9tyxbsv+QaS+71ycYvPwjh1GeuddG00by8klg=;
	b=FYZfsP4T/p6PDJ4YV3wK9B4xQmzSqQd1byfjHWplKEJ6Kziqtcs41Z4Knl4OYTGk
	RmHAOH8vfGeu6FPGEJ7sRZVFQaG6Z4ZyzRNn+TMb2A4F2BYVIUACvtVgIZXsOr2WZ0H
	2xfRJFQ08mM+gg1HhbKjY5syPeVuJ1+xXApaLTh8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc2062a57-7a3a73f5-a52e-409d-aa77-e162f0fa7ae8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0dc10ac032742c7d2f9b5c173f690f5cb383c658866c4e02246e2f5f467aea4d
Date: Fri, 25 Mar 2022 17:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648227658
