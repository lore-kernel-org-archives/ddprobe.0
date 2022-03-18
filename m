Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F93515AC
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 00:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647564984;
	h=To:Subject:From:Message-Id:Date;
	bh=XVbA9Ww4r9uRShhJye5mWUCMZKOzYvyUPfwxojr/x3A=;
	b=JVsP7z5jz6IOqg86Ykc6YYfTxgwN5uK2rFlTFUFvK3vBYoa3pCPFv6apDr5Va4J/
	ucNAdG2UZJNm38sB1SHmJMXtZz7YrDEisXwqiL1hb0UfslhED6JftfYaqzJdIknBs0V
	h/aONNjhhthx405v94HDtNsGV6/BoraIjZ3/eQiU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647564984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XVbA9Ww4r9uRShhJye5mWUCMZKOzYvyUPfwxojr/x3A=;
	b=UtJlRcnYO7xLuXoEigNcIPEq+BAchmgUKKM3T606dUiZdUCEOjqLqWwuWkS2r5M2
	accuLb5nsOG/bWnISzAekyah8a6PcZrUmVy3T/p90cFesHwRbVncXUFwZOhDRiV3Dk2
	6jT/RofTQVx0IyMoNykcfpQ4znteYqQcGm1a4qRg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9a8691c2-dc1721f0-fe44-4384-a56b-5d3d570bf353-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5aee59af5f3bdc14e785107c83bb6f2fc35d38c7ef819e0dbabe7931fb47e0c9
Date: Fri, 18 Mar 2022 00:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647564984
