Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C0423CE
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645808485;
	h=To:Subject:From:Message-Id:Date;
	bh=Iovp8s2x6sJ70oTXHVNurx/xYCMfQkS+TpanuM+yO4g=;
	b=ANn4PPLrZyVhvJ83RLmVo2Cz4Af9+9jZCd76On/rqUP+JTylnwn4MM8uUHnZKc0R
	8EE+/Q8iQMd4/NBNi8cGOws1RrRPWQR7+P4H5l1xrImj8uC+0hxtR6fG4AhLmG/oKMj
	AEu5MjElXwdcdo3N4TaAmTq2+K75lQffjsveNmME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645808485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Iovp8s2x6sJ70oTXHVNurx/xYCMfQkS+TpanuM+yO4g=;
	b=QMa3K4TC9mcqh2Stgs+HLStngPf0xEzUKFttmyW43sGYtBWzweUb0A2RdU1MNOm3
	ij+/iUBy/ePzlfmnJvA/NdPCsfASNsJTFfKGiE13CeWllBBhLu36TrWe1K3VWu+mNlQ
	QnW1cyLJV1NAijrJbSSxKv5LWkrnrccdY62zQsRo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f31d481a6-34753b55-8573-4eb3-9150-1b8abca43f54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22e73e3d45a97285c55515f6832a817b6b8bc314e97e88b5aaab85f738f2cd2c
Date: Fri, 25 Feb 2022 17:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645808484
