Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358E915BE
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 02:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652323319;
	h=To:Subject:From:Message-Id:Date;
	bh=xuiu51/f7eojOFsD6v9wGvZJ5kS/iK7Z0/W43CdLFOI=;
	b=BPYlaAJwjtQKg8e1lbW5rKJebOVs2TryRGCKXiFJ3fdAvX2sNqqM9369WUydNdxA
	PKf0BVybswfhT8bt38PHQ6nQTrzCRC9MMSqryrt3325my6A7IAGWsZF0M0iNoVhYi/K
	Cnpu4Olt2ZY4KaETiTjIg1deKFzY7HpALfYwfoj8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652323319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xuiu51/f7eojOFsD6v9wGvZJ5kS/iK7Z0/W43CdLFOI=;
	b=VMhlAWdWIbyRqpzZ4BTt1MQ1y7iP9+i9KaIkOVWFe27VpaVO2M8wfSm26yJH2PjH
	1rvf1xitkq7weQnCi8SecGK1NQ1kVGSxwX5S3fTqI/ZOOa9gkGON2FhW5dwCtCbzFci
	ATesvDclG7tHSrT/4pBBeYXrD4UacdKFSPlX8cxQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b624fe32-33ba0dc6-7fb8-4723-a8e1-2b984862b25c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 436e2e5494977875fce1e152ece8f899435fef7d5cabf57ede13e2db6b0feb75
Date: Thu, 12 May 2022 02:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652323319
