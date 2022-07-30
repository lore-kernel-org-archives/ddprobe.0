Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C0923A4
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659162052;
	h=To:Subject:From:Message-Id:Date;
	bh=OBAJcfu6PxOMFggl3pPfKtE3AUWrN5RBKUN/UdUB2Sk=;
	b=j5W8Xw+9+WFzn3AnCMQbZB83IxMWmQ8XKyTOcm8yKM+eMzAMt55B7RdA+xss1qge
	5x0FmmW82ZzBfe444tG8CAe57Rpyq/5G6AC1uGlnsYo63jiZryp9gQJJe/sfFhAR0e8
	dWQHo7qoF+39cQ0DM79Ew8zqLNFAoYRsxQGuV1IU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659162052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OBAJcfu6PxOMFggl3pPfKtE3AUWrN5RBKUN/UdUB2Sk=;
	b=Sd3tv8j0MvhiV9BglC7FMhONS6U1+y5O6sLUZl6vyNTIqbND9Cu6vCQiL7Vi+kUD
	IMgEuHwhd5WijjlP4tHVsq2WNsFKhvq9aO3KwURE9vp5MKHOtb2RAesfFMTEx0NaR3K
	d51MwqKZPt+PJ9xT4s6YJws+KSdun4bSHbMFP0lw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824dc3c7cc-6d0d9b50-1dae-4612-b72c-7d9501a7f7e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f1ba93a83b71c9cf23e5fadf583c89c8132f74d5f1ea1b9e87857ec3c7ba792
Date: Sat, 30 Jul 2022 06:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659162052
