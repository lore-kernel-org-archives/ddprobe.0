Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67AC56AAE
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660677052;
	h=To:Subject:From:Message-Id:Date;
	bh=3dYydOIu0MxrEqSOXER7f18+PHl4iCqWzRV7s2ukj1E=;
	b=MP663+/sDzk9bGBOh1dddNRf5xWaGeqPxVTsy+mGovALkHEnB+V4gfB77YOdpwGv
	czssVXNyG4+xtcpqjnngYT6Chn+X2TbWqBnBOfh2R0BZm+jTeqKis4qu23tkWtEeCJg
	9+opnUVRYtL1T/9EY2Qa8YTeNY8xieETZt0N1eXA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660677052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3dYydOIu0MxrEqSOXER7f18+PHl4iCqWzRV7s2ukj1E=;
	b=JU9/pKkQ1A+woLGXU1rRYBvKIVGl20AKxg9WhMF6SmyvBa5WRFEr0ZRfgIwuwi6v
	23kgDhXRyw4/JGn9IzOlP9IAjn2ZhyqGl8LsLD0P0NvFBb2YyMftkZVGq/yf+n2278s
	lwz4YEhdniwqKklCkykPq/Zz0ZuHlMGbYkoDWkNs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a810d8af-c46e898b-cd4a-4b02-bab7-126b4b3d07b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8148492af0f9fcfa2b899d1c1a7cd2999334e1c6a1b750a4b78122ac79f5a180
Date: Tue, 16 Aug 2022 19:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660677052
