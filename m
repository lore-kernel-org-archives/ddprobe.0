Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A75A6AAC
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 22:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657663612;
	h=To:Subject:From:Message-Id:Date;
	bh=iq06UbBTbqn9CkWu50YJ/kEdd+Tjy5777Fv3HMwunCU=;
	b=C7j4LPPXAaYBjfIMHvjd7XEIcD9nH3WtQlIcMiKf4iAFLcBpS8nfRwI3WCdwD5cE
	o3dYOxnP7uIEeCtPf7NGcl8aFgaA76WZXafQUVwBIaTMpwNAJg7qPgGIiHsWiZ0M15A
	aUjJ3WrWtT5MF+MLvlNXNZmYyjIfsS6bMPUrNojU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657663612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iq06UbBTbqn9CkWu50YJ/kEdd+Tjy5777Fv3HMwunCU=;
	b=BalOTk+MSMWTvHO+Q40C5av0rcyeLIi8GXBgRwz53g0PA1t6k2Sw0psMEDzoEK1V
	kdQwrw1N4oRnsxFRx8N5T5pbuWiVwv2qTaNX7kljo83T4JFNLq94ddCGivnrLyiO6gp
	4fTYn/UFxUEfiZiHPsVzH7orguGijM3ie7X1XZEk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f473657d-498a9f67-0f34-4171-bfeb-3dcba0b9e809-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb4b8018546bb8cc9b75e84e19879dc618a89cc42e573fe184013b6483b00e76
Date: Tue, 12 Jul 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657663612
