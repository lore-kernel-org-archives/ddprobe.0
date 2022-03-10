Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ED8B57E6
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 14:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646922384;
	h=To:Subject:From:Message-Id:Date;
	bh=C6J3/n1VSrDX1Bq2vM/uTxxykfAkQ81t9VkuI1XBzWI=;
	b=V6whKguplZeOwsfP4/thxe+SqmS7lznjs3ls52k7Ng5vbzXxFqiMjO/LJhH50Qz9
	SnrRZhzn43VlJ6UU2Pw/GvOID9IfGpJcvEscwGUwE4+VN3Afk8Pr6LsuFHDMpSZQ8WY
	SYUY9oCWwJAXS3lubHRuJx513iGq6oh8DFMWXmFI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646922384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C6J3/n1VSrDX1Bq2vM/uTxxykfAkQ81t9VkuI1XBzWI=;
	b=OgbMTVB48refrT0BOZwxTk5ShWiUv/gZzhxXPv4WSPXGcF52EDAP5qHQ7tT8NoBj
	44kGqyz49igd1JgCta0NBz510EBAJQKoOD9PsanuMvE3lkmm+J4X/dUnwhBTN05Qbtq
	0NmyWp8KRf4ByWgcPaoivHc2+/wUhR07bCljptLg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f74394586-739e8a56-e5e4-4fe1-9441-eb7c13723ac7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1228dabf7cb6a040056db994b286fde4947ab33e5a5dc52920b1fc0e8945410f
Date: Thu, 10 Mar 2022 14:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646922384
