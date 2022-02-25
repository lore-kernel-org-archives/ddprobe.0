Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A0623A1
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 14:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645799185;
	h=To:Subject:From:Message-Id:Date;
	bh=Y0NXMRNYBmFlu2G75BPMdteNqLHZ1U7YFIQiGoMKZ54=;
	b=ODFdk5HLYtFApOw3S421AlmTNO0oJvrbi2/eZdO/YzC/U4Kz7kGwYbQr9jfX1Njm
	wMph5CBaE1W0grZHIw/gN/1CNJMyNhSo8hnZ3u5v4/dPaesVSdWps9ZyWPXPNcMwyqi
	DTlHz2LDFKNixLbrPtplb9AUFaMtH5p4bPKzrXBU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645799185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y0NXMRNYBmFlu2G75BPMdteNqLHZ1U7YFIQiGoMKZ54=;
	b=bMFPVS6zdmykSfvZQDkCTxXKVjcvUYACJo7pDHCjdm0XHiR9vPURxs2lZEgmWHeO
	qwhS2QDy95mxUd4CrnqYZo67+dRhRfWbToCHV2LQKLz76o3B1Ld6uRBWaxWKy+kV8zG
	oi2JnmJhCmJlayo2r5pF81CZDkuNY9+3gsSjTJRI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f314699bb-7a83424f-efb0-492f-868f-fcd75d27b9ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92774a34a3cdcde65f6ce6f4c1f919426f02adc072a91b496046b4cad4b5646e
Date: Fri, 25 Feb 2022 14:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645799184
