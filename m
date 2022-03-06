Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A871FB7
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 12:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646568084;
	h=To:Subject:From:Message-Id:Date;
	bh=qgh+bkIYSGMB9+eLmMiYMwW87xT8pXN5pZJoa4pvMe4=;
	b=JE1p8rTIuXcEvndow3psnnVde5agGXvmAv2C6r6bjT5tt+6SKZ9dTjDB0l8IoJKS
	WdI38NAYstLrLkyrh5P+h1lcDauitMNxBXbD8xniE+QOhHi5HC91PmQBrx8fJJO3IV2
	8rHZml09Yqfc4kIj4uClvyPEuhf/rt0nczXQ1B5w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646568084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qgh+bkIYSGMB9+eLmMiYMwW87xT8pXN5pZJoa4pvMe4=;
	b=YkQNBltoN9km+8m9CIBrAMaHW5WAFUo1WzpiFE1LBH96E2kylX4gRx+1ifwPZT/4
	5mAa3yOYApiIjJ0Zr6tbCC44qKXrGrvdEPwAWkG7Oscz/CLLlMajvkC6xb2edTB76IG
	K55BwSd7+S8oPfMNF7UsrIhwPNuPL6mrdTvdHavc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5f1b14fc-e2442cd1-380b-4068-85bb-7a3b7c0efad5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0ea0914a2b6abe8e638ce5ed3717870196e093ae0574cba5cd4adbfc960bf09
Date: Sun, 6 Mar 2022 12:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646568084
