Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 781717C
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 05:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645939885;
	h=To:Subject:From:Message-Id:Date;
	bh=v3XDlIJOvJML1bupvm9suAiT0EJpGGELgdAQpAJc4vc=;
	b=mjyPkIwnQv7HSNYxUgbfJlu59zT8w9qg98shb3y6c78etUWO4SDTnJdPIvEbVv1A
	pYDTn2sM/0Bkuy4G86dxr0weuz0teit7q/tBdKp1J5HhHKEaBw+OGC4OAOX1AGyBIqT
	O8/4IM/sYnJFZLTob7wrEig/ihN9YNy8DAdNpjnc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645939885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v3XDlIJOvJML1bupvm9suAiT0EJpGGELgdAQpAJc4vc=;
	b=cY07ET/Q+w7L6ilSS/n6LRrLKLr6gc3SRoQWjgL3CJq7A5Mee+ZpZCyP/cBiyXrA
	c7wRddy3SEDCd4FslMyOtUmdVuYsFuLez8yQHwbLuy5XfSAH4C/oKWe6CE4ZqO6hnnX
	AR2+O/zkFQiNgPyMcDDEddxm4aTR8bu+mvf77JJs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39a98359-3ba892b8-e5a2-4eac-a8df-7f37526dc6b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14bd5a07a52021ef6190144f78512652dcfe37ec03c4a404b6446eeb656b338e
Date: Sun, 27 Feb 2022 05:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645939884
