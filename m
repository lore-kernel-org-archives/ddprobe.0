Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067FF20F3
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 05:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650088138;
	h=To:Subject:From:Message-Id:Date;
	bh=RFdC4Ihopn96qKae4SOA4KVV1Sv4J2V+7iRxdXtYv/0=;
	b=T9gQC26NonXmD9K1AHHDgvx00iIwHDutocHbLjSeuuWONmiw1zS5nMxGNGFN0zYl
	IfGbcLh9SzJKXG0vD0z7JDlCsA3QOIDuHPQ52/sQj7v/dsCDSVYAzTiA9GboUP7nCNa
	y3ReEuWEF2qTvK6/c9H+Ffg69TQFKGv5759TTys0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650088138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RFdC4Ihopn96qKae4SOA4KVV1Sv4J2V+7iRxdXtYv/0=;
	b=BagPq/ITnaGdjsJb7+ciU1LdbvYXCBOwLlZR0K8SLmhuU03qwt04M/WbLLCopfeT
	N+58PI5hldJ3cP4G7YY0YgquKKfeN1s9fmoAnSRZLy6DkaMhHsDuOaancoVu2R12SZg
	k3y2b6AllIrvkj4A0kZObIfXEHHwa0d+RFpK9w5w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018030ead606-64aa28a9-922a-44b5-a815-afffc7149420-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 174ef4e197bc29dd90e3c400dfbb662a0c76b4f07a99ef4273e9dbde687d0ee2
Date: Sat, 16 Apr 2022 05:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650088138
