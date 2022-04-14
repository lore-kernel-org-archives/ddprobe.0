Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35725320A
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 18:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649959738;
	h=To:Subject:From:Message-Id:Date;
	bh=XIU+r6asOx0R6jHGsGptQ84/dk/BgpfQCVHDLk/wLg4=;
	b=dLdVkdU74qciJpfvknbFo+Y1QSRTWAk1Kg25h0FiRPI0JykzfFUCPK1++n+z9nWT
	BfHRfQMikhmDZq8LNCVVuAf7yeambUIkScXrSPf/yuBTOunFIInCi5AvLk1Z6ovjwxO
	6BKG3rcY1IKKcyoz/WgPvyueVJ54qnSdli1SZ67I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649959738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XIU+r6asOx0R6jHGsGptQ84/dk/BgpfQCVHDLk/wLg4=;
	b=PDIUSKbrXQ5mb7nc+dzIwU9NxMLlAHgxJHnjh7Y22dFO2cZqu3tWuBsJI367LSjK
	Is0Kg9k4GBt5WGG1djid4TEY5kCEdSXVjDd0yXfdpBgD2Rrf8kCTUU2rAVkatLh4M/1
	Am5u4JyMkGd9AG5C0rTEcJz3PiteaySbaPdCBqRo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018029439c0f-641df2bb-526e-43c2-b7da-84c487a5eef5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: edaaa806a51eb74eae72cd4b021b72ffd21bc022d9a2ba96dda951d2de99b193
Date: Thu, 14 Apr 2022 18:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649959738
