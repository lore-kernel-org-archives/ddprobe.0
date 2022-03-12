Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A912F50
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 10:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647079284;
	h=To:Subject:From:Message-Id:Date;
	bh=dITMMUKczh8ml/g0Uk/kyicmh3SaqL22F8ej6pZUMSw=;
	b=jJh+YqNp4UlW95oy3PHIx10RNWoxT5BO3pKiNRbZ+ONb3YO1MAwYhLOpPit6tzma
	5RWkqRrUPsIPh7guvvMNs8F+9f1YQ/VkXcCgwooQF5TM4SO9zbbCggfw0zXBKi7k3Y5
	rBxKTxb4VslrEFHvGGGvBJNbH4u7fKsFgVRDpHl4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647079284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dITMMUKczh8ml/g0Uk/kyicmh3SaqL22F8ej6pZUMSw=;
	b=jOpd7Qx3gJzjwECNjyzhtrtoPSzL0pDhxuqYPbLAAkPaNFkk4IvJGafrrjdVCUcg
	qZVObtcxa7KZ8Bl4vviX34Q/0ZulTFnr0g6PbFffQyqqwFcSIyI4dMeew11kU3K8oXf
	gDLwhfwQ8tBSgXxI31ZQpITLDj7sRU5zo5QMUL9s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d936006-b8193fde-4817-4d9e-9647-5a8554f5a96f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76226787eb311c752f073ad05a864d56e48617be825968b46941ce2359e6b8d6
Date: Sat, 12 Mar 2022 10:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647079284
