Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F62C7C
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646831484;
	h=To:Subject:From:Message-Id:Date;
	bh=PJ32CL+ZrVJ6ddeDRa/6wSu8v/dfA+cABFEbGyPxFQ4=;
	b=Hucmrzz2xThn3dC8Go/JyubZyq0YR/Ysdl6OJFuy1tdVKf089KAqC4rC5kq7qsbH
	6tNPNGQN1sGOjAtdX6LqIDnPOdPqBOiW+emkEITe+Q2ivNlVS1z1zrk3cI9h2acOpMl
	a+TcvcYFH+K5GXW+ew3PPUhyxHXiB9IJIfuN4RqQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646831484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PJ32CL+ZrVJ6ddeDRa/6wSu8v/dfA+cABFEbGyPxFQ4=;
	b=GMj7u5z92zXnYnUTrTCsq7lo5fWosMu0C6UKgv+vdn4kdnfH9qnynov2ofROgXbH
	rz2a/DKpXmCBEPH6Gitx10GPC/u5HoN2JF8WjG/twOVh96iY1hXZibc+HBglyHAxYKb
	of0vwYHFWC9e+psBdNyTQYsVKLB+VjKlPGqW1G2w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6ece3f24-984b8860-61e9-4831-94b4-4b4dd481de93-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7924bf9308c29ccacb2a850c0c369926d82d5d2680e55ed6fa7a8a04b25b5af0
Date: Wed, 9 Mar 2022 13:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646831484
