Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A961860
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 21:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656709612;
	h=To:Subject:From:Message-Id:Date;
	bh=g4D6QnnDl71ppqLW0RlZ+BGmNJAJMIpjktPWoHa7tzA=;
	b=EForusOF6PUMeFUih1USsSzUVDf0XutERXO4Eq6FoKtocnyLIqW02NJ/xknvAVvx
	P2lJ3K+zRBco2z/2bfq+XkS41GUvDb6zn8UnyCn9LwQH3r6miyz28/OPm6AfWAj3hzE
	EhOEzd9MDwl0huauF9iIwTgnHbUSv410MqvXan3o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656709612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g4D6QnnDl71ppqLW0RlZ+BGmNJAJMIpjktPWoHa7tzA=;
	b=gXzIyxPATD1N0JX7v8Z6QANhfKG0FxBTMTfyrf0tiYh6w1MKO8YbfWGft8GGHEif
	AOkL3+DhcuCxOYfjbet3I8/LquWq4Oz6e+pomQ2aVrU3EYWXD6BXCEYPwk+F6sE1tdx
	aLff7+cYDO2G+jSvAgrFHyAd3P9D9KQB7jOiqvcQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bb9682f0-26509bb7-76d0-4974-abd0-3e6aa6a44d6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 709412da42ca665ad92206b71870623fecb2efee124508cc22b11d67705e554c
Date: Fri, 1 Jul 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656709612
