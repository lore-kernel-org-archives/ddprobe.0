Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4DE738E2
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 00:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645058785;
	h=To:Subject:From:Message-Id:Date;
	bh=EhVUDp60cK+1v613iG0p21jA7AFpwMw3pBO6Bl3rbcI=;
	b=P0lGvV574M5JxleAKzF/XcVG8metvlVfFY6K/Xaqr4k6AKh6YKuSjYm0FIklSbVR
	thRXMD5T/jpL5W5R40DnZc+7d7e2HSPjrwU2LdwjBXqYaGa6c/0W68FKPvn6mNoviRa
	pHpqXBnaPizyRn1tsK6qps80yfssotqmXzgP3vVk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645058785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EhVUDp60cK+1v613iG0p21jA7AFpwMw3pBO6Bl3rbcI=;
	b=gL6Tafq4d9xNIQBNgW21M0g6aPIekQA8+vDeNyMbQOCJ5FNLuszbxt5OumaQAMLk
	+opPUsBVg1yq4mBkH9lhg0eBdQLCuo9batJV3Z5Gf0TCAWbvpyWtAI4U54Vwmd46f/z
	6+3w1TOZDHWEZsRpquLkT04i6qO0MY8NJNmXBYcU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0524fe08-b96af901-d3ea-48da-aa5c-0dbdeba315bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f24c64ddd2d49be94eeab7adb7094849f21191796d5eb99f6ed0325df40b61d5
Date: Thu, 17 Feb 2022 00:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645058784
