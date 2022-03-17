Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B05984378
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 15:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647531684;
	h=To:Subject:From:Message-Id:Date;
	bh=z0SrzNmQ8KLNWNRY3NyF6BVoDf4jCS9E51nuWqa02W8=;
	b=YNGcnDX564jd51weOpiCkuB5gKUAjHavUzciMsm1Mm4Ar/ENIFtq7ROtZ2mSTfvY
	MZ6F753XKb+WF4eA+OwyLgfUTCdpW8g9qVMrzXnRRKtlJBJuHsNZrTp0wfME4knyzTJ
	rnTyy+QcYj0vDagJVmIsZYcTP2F8zSoaeNOpzAF4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647531684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z0SrzNmQ8KLNWNRY3NyF6BVoDf4jCS9E51nuWqa02W8=;
	b=Is0DegDAMbcsab6tLbK9HN8uHLgI1OjHmjyQs0zUM1KZw6nbGkvp4KUhxvl/wv7k
	xOl+IG1vThABNrQsX0W5MnVS1p+l183CLx3jbAaRrHuBr9Vl/iIEK29d5ZzdKAg7wjU
	C2LGuEGreIk0baDjlruw45cgjMiHpljhdveseoPU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f988a73c9-b35dd35b-ea94-48fb-8e4c-4440899fdc5b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a26f43d78d0927a969a093a851a4de9aebd768af9e0626bb37bc86c1b0d01ea
Date: Thu, 17 Mar 2022 15:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647531684
