Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62FF05101
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 05:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645248384;
	h=To:Subject:From:Message-Id:Date;
	bh=xDXB/yY2cJxvBEZ55/nh+m9fdvvaUpPSISU1aeNXNKA=;
	b=Gk7ev8cRVxRD3xeyacM/fbszdcBIcZQ4PVgGiKT4eLbsiaaA61vZRX0RSBzK9wAs
	3aJKx7aVeLVRIcZyNVvi22VYfxYpFDcndshVOsDP1Z3Jj3G3zQf2WL5LT66WhQZ+AQC
	CWLH3QlGdmfJ4MgO+ICj2Gr9VcFPdA0cYd6c0EmI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645248384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xDXB/yY2cJxvBEZ55/nh+m9fdvvaUpPSISU1aeNXNKA=;
	b=XX+JB3YcEW7jkQxC1uexQSpcXwwm8DrTpWKgLNg4/P9vkrbqCPN67KUCT7Xr6H0q
	mwQvTlmxFAsMaFdBysjpz7PFztgebD3Kh5HtMkwC4GSci1k8GgDwKh4VTSMTJ5EfMiV
	o+vdtqYz2GYpqH1iV0sGHkUSux0qa0kC1GQfrQb4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f10720f29-f3bb4af7-62bb-4a85-884e-640c37076bf4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: afd8a4826fcff1b9fca3a1c1b7dea7ee99af87fc2a706bf4b4892152e25f9507
Date: Sat, 19 Feb 2022 05:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645248384
