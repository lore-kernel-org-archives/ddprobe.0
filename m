Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F46B1394
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 18:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646505085;
	h=To:Subject:From:Message-Id:Date;
	bh=CiXZH2eTKGcNHuFzb3ahUB+1fpuwKBJUnVJld7KibO8=;
	b=Vx+hciCEpnq7gMOFDtZXenijo0O2zzkNefL1nUtjfLd4nH++7x3abe9nDhdbe5eJ
	CRyGqFo3/GT03CeY0nreLKAzvCji92ZooTUosPBpibAemXK1GkoMxyUG4tJsLWDPhSC
	LQoU8AhukVO0cy4Z/KPCmuOARBBCBMQvVVBhRQbo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646505084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CiXZH2eTKGcNHuFzb3ahUB+1fpuwKBJUnVJld7KibO8=;
	b=Cu4j8wUgbp5hAP9eHnFgx/XwlzDfJqP1jtMwEJdC/Ga19mUfv86dtYHU2FV0QqE6
	3q5gNCi03ED9w8/sj+t5kJcPqK9EOoMR2cWUANbwFw4qvute01WQytbt3e/Qy4ILs2F
	WxUwK+sXZ+hBInzTFPmMqCUAhJj7QeED+uG0ucLs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5b59c73b-7e7e66cc-439d-49cb-96d2-4ad957a12cc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b74c17b0bb5c2ded616c301962e49cf4306fe756adf01f14cb1087a34f202d9f
Date: Sat, 5 Mar 2022 18:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646505084
