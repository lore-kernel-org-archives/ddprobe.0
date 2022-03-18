Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5C036444
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 23:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647646585;
	h=To:Subject:From:Message-Id:Date;
	bh=Mi5d29qFPyMnhLG0b6mv7eFVvsvA1xO9MyECmQf9Cyw=;
	b=AAs8i4LMgggERqZZxdIHI5v0+ht8J06TMlY4OJMGXcBZioxe9FSX976CK6q9YvOB
	8410m4HaVJGK5zsPtq57YOtUhAYznn+4/bpWMOVaBqXm5gNTrlUcT872drCgl9vJU+R
	jfgmVcZKCuFvF8IjtC3YWAl0LAivvAF2z2d4GY7k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647646585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mi5d29qFPyMnhLG0b6mv7eFVvsvA1xO9MyECmQf9Cyw=;
	b=OgV7jsa6iNBoF+2xm7SKEFj+ain/2grOdCCW6bO82T6Ka6a8Rz80kZXMlCXzrW8L
	Y8xDSs5L4Xrl/M34MGlZXXHQNY7QLp4TtziPuv6GD+a6IGNsG0AXUCK2gjz/BOz3rQz
	jvHhwwbnR66LE8fZky4HdvxWkLZwin3aaZRnoqKo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9f63afda-d200dbec-bc2d-4fa9-a920-ae56e82c2c0c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6dab5253c4ad1c995c47ac67f055d585799518a2861e619d33517fd88d0d3288
Date: Fri, 18 Mar 2022 23:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647646584
