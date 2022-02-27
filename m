Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A5952F2F
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 02:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645928784;
	h=To:Subject:From:Message-Id:Date;
	bh=J4xxqzH5vGtxdA4Ftht4tjHmP56vPmcr2QYmaUUNsO0=;
	b=FujNzpKOogJHbTSawTFLK8trZon4NYgURL35WDyZH4i/W5LOaEwkxVLb00UYoW9Z
	OFiAFYGNTQUNrhbGzokqzfgxSx85LX+kQBiUAyTBzyVcm/DPfbSzu9EJDSZ45HukmvU
	4p1bCqY7AKGFGnIAJ7aL7N3gKMIjDJb4a7ork0+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645928784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J4xxqzH5vGtxdA4Ftht4tjHmP56vPmcr2QYmaUUNsO0=;
	b=DefizUj2hWDMnpzpS2pv27qhHRrlGne20Y4gSTbeS95nHgbUxPalkm+trKw8jjXJ
	SAbCiviQuNVnc0y59Jahe439zuQLcoejTZuKYfOEdPEKDUTyjRJRedJNuCP1lyHGXwc
	Sl8snRdn0VG6XwIAJCPQhArCyDoXpjjN/OhGpr8M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3900237b-399d31cc-cd30-44cf-9745-72aee2301817-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 74a3e43c4b961d028ac00787a004496cb5f7c4b3a3e89b057ca34ff725c71e28
Date: Sun, 27 Feb 2022 02:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645928784
