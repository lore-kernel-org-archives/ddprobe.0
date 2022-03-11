Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2A27E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 05:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646977884;
	h=To:Subject:From:Message-Id:Date;
	bh=EnIBtRhttefcCCap/FEdsEf01TQcH9eqNPD5anedigo=;
	b=dYlwSjin/NxLdiHrQzLiOudwOXmrGzpLTTs6Xf4gqPiLn979d6+T1FvVpoELM27i
	pqe2ZY7vrQje63iChFtok5V/YeWwEsmnGWfbVYo/E/igUO7y3KGk9v3BtTyzoC5KZvZ
	yXDv/hDKcMvAbU89MQTWTfAycMa6ahf7BjAul4ec=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646977884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EnIBtRhttefcCCap/FEdsEf01TQcH9eqNPD5anedigo=;
	b=NyoCUhMH0sbyDQIfSxDJ04fDAf/mffEOH6Ga0P1gh9qd14BWaNn2WBujdUADLSK/
	WkSQgkfb9rxyroqd9GwdhBJKcDpYzJmPMnPmpm+U7MKPuwlFBYdVT93ERbYszodmhVV
	1T6P2ddhpIKThl83pcMRKqQ/LziUQdbWz5z9S0ZQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7788225d-6c638343-952c-4af2-b596-511b4ae6d330-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3cf3b72534afa5ade8b8a8b1c61fb2d8ad2a3f0f546d6b237c3999194201e637
Date: Fri, 11 Mar 2022 05:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646977884
