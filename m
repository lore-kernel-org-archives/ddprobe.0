Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237D81FBA
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 05:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656824812;
	h=To:Subject:From:Message-Id:Date;
	bh=Sukg3g7lTLaG/fTpKF5nPE4eYcQ0qZAQiglkejJw8Os=;
	b=TKxYoDcyNC/Crog8NF02dYP4NB4Zq0H3g9l9saU/hXbpmDavSRLVcERecpzt6H6d
	7QDC3ZkZavvfKUm/4mLcCuB8K+BmxyA16pWZNJV6jcN4ERFlXyFrsbWB+R4csNYDUQ8
	+o49qv/Q6TNvkEUfy+N/TukIP0sF/xwO7A67gB/8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656824812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sukg3g7lTLaG/fTpKF5nPE4eYcQ0qZAQiglkejJw8Os=;
	b=JPfh+7fDMJmnjUKiAl4dujpjCrWEjPmO7Dg70URkV4RVYw8XOd9i+G4b86FlF93Q
	sU8UQuzLE2TdyEWc0sf38OZciuv8S5SzNtTQm+rmHjSv+nrDhZCTCDzHovSuwVtaNyU
	LtZ9BWD7Brfr/uHHevl7rLCeDyli3Hg6dsPApsZs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c2745312-f95cb8ce-6741-4305-bafb-00fb7fb304cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b81bac8cac26627801f21a7bfe876f09947cee7f314e5c1fd8241733bd52103
Date: Sun, 3 Jul 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656824812
