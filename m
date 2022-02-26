Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574C53B21
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 11:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645873884;
	h=To:Subject:From:Message-Id:Date;
	bh=3z83yQRA+Rlya/nGmAN4v++qbU4Vxm6gzMprL3mj9mQ=;
	b=C5yvCWtqaNRJyWVVkZBxzZKfv/r1cE6zJfjkNRTzS3R8n+o65JOo6VRhtvXv2EG6
	VgZ6TtFK4XbHHBCsaLnI0lxjHLhGZ/zB5Ih7HE+B0NyQSWiA0Ty6RBCDEbQuVDRwiJQ
	bKGRbfaTyQcWUE10719RsgU9WdYOMgbRZrT4euvA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645873884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3z83yQRA+Rlya/nGmAN4v++qbU4Vxm6gzMprL3mj9mQ=;
	b=OaQYxhqdTY1MMUwkBQirUcg8t70ePitA735//aU32pOPas6CvQg8DKGrVwfsMuSG
	/wgcrb79NeL4pvT6FCja0YWnEPfKKufieiePUiFbJSQRONed4UqfdQP+77FpNj4ttnj
	/7QStPxBip8TrSr6+Jy76i39V/vEiiO28BZlkmNc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f35ba6e2b-f7da4e9e-cca3-44f7-9e3f-ea2e183e6cab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14f85c79a4c5adebb9e062ea86f28262981a727d882d1f7e2a2931b1c4b7bb62
Date: Sat, 26 Feb 2022 11:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645873884
