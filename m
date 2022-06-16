Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6E07E
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 04:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655352779;
	h=To:Subject:From:Message-Id:Date;
	bh=LDKsfyPD+vp5A3+qsfc568WSmft30IpfKEOTuLKfk9A=;
	b=Qly/2NmK4gDvi296pep6dyv1pxIKWwv52CSiuMkVlVp443xRTcDb0WHjfPzRxI5R
	FvsP2Ebn97DSCnmhNOKikN/jeHMpbTcLUVEjYIYGdSyDMBzGqWu5jlvWKUh/Tj4jSOi
	es1QCqoStLfsqUhfTCwrtf2zb9wTftiyYqojT5bM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655352779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LDKsfyPD+vp5A3+qsfc568WSmft30IpfKEOTuLKfk9A=;
	b=AIOFd0zssr2Uasqif3VCWVyS9R7XuBFa5KDf20g/TyUdEb6fs/bsnY33OpIzaL/6
	0J95lr6KSCMhkwkE1QNlRUSm4HlaR2R70AVviD0Q3W5H30/WOJHEf8zwIATQjAllA94
	wkU8aQqQ0m+8kL1AhlW3XhvrbvOMMFIwDPNQ3d8s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816ab6e1da-c0644394-e384-4f2c-8d50-b446403c3058-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2c3b0235ae44251dba6e61edab089656ee771a8805c71c9627788f077130aa7
Date: Thu, 16 Jun 2022 04:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655352779
