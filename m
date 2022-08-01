Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AC17F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659325252;
	h=To:Subject:From:Message-Id:Date;
	bh=Ikpn6GBAWy9hU4aAXNzwUPLGp1CLqCMbnb6lGz2fsKA=;
	b=KHzIVfHV0BjrWFNGEiBjZO4LQX3+JVSXbWm+uY8xxfRoeJVS2qARqmQWs/gWkjhL
	9Zq4VlWkx0mzrWgWLG7aq+YYZGZs8eW4odKsniQg9kk2tNXb8zCcfwQQBU4NmGjY54s
	YWs2//0VKxrbTT3K4JwSJqbexP3rzJllwCkL0p0c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659325252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ikpn6GBAWy9hU4aAXNzwUPLGp1CLqCMbnb6lGz2fsKA=;
	b=RE3Sg9B290sfICMVRZzP4V/alCZg3ZU4DdZYCGM+3yIXja0e2FLPAaeylC308zoo
	hGhcoYzjj6P7YjgiQHySQZRYpmLj5eB/UiOwc64MlO1Ckp81TJCPymV9g+IhVuP0Cxc
	9WAbHyJc11C37WcYGhb7ZmAbgoqTMw9AwdFQyA3U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182577e03a7-3b03756b-74af-40e1-a077-02a56a66b696-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dee03e8c00023cbe3063a24db6c9de876439ac2172bff8f8d3a850653dceb914
Date: Mon, 1 Aug 2022 03:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659325252
