Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60057C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 21:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646428285;
	h=To:Subject:From:Message-Id:Date;
	bh=XwDU1m2+6kyw5EI3IcTqxh1JIynykdjL9ufAYRHoFwI=;
	b=lfjuxpcNBBOpBd8qPEKDgRuYSHUpDHpPuXTfKhgaikT/ASH11tcO9+EiA8wnIrgA
	p1ZLsAclwqKGnIUI3hFWegdV4ur1LCdRSf6FPUDFijeHT6I2UnpICLmg0YPS8u8prHT
	ToQST1PpDn3kEmiKbeo5p2VIkBFL30EHQWZpnN3Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646428285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XwDU1m2+6kyw5EI3IcTqxh1JIynykdjL9ufAYRHoFwI=;
	b=Qkvu6u/MxQjEsgcEDof3g3kOz2njDxQG3NKp0SN5QbW+UcDwyCHRnAELy8dlLNze
	ZTZ5XMwG1Z6ZDv72p3zZ4Q9dpUqCJtSTUcIDJrNZXVrvTLhMd7RRbt2hH54bMvzIosM
	0k5XnGQnqZtO3wajiDZhvde+ogIAk8vRsk1geLz8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f56c5e77e-b21385dd-43b3-43cb-bb5f-e21bccce11a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a8eecab89da12e71e2810f2e9b5cca43a945bb420b85c61540a4bfc8d963ef3
Date: Fri, 4 Mar 2022 21:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646428284
