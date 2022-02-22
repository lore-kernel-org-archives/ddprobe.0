Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721D4366
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 03:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645500385;
	h=To:Subject:From:Message-Id:Date;
	bh=+BUa1KRlJP4mn+mksMPvsQNk9uXDNAc8AUHQF8ZqWgI=;
	b=cc/KS4InC6T91MnnTsXSQNkOBVSTOrBhSRkUD3mEhMLfyBU3E+zsOfB7TTNinfVi
	HaC48rxfxNB5K91RaisaIDevadcakQT4fFHh9DRtWBH4mB8d7w0mnhDdAGzacWsfBXH
	jVhlwIXR8XjKgilEl0MyhkcSKHF4AewhTxk23jEk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645500385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+BUa1KRlJP4mn+mksMPvsQNk9uXDNAc8AUHQF8ZqWgI=;
	b=f+R5kUenHEwSS6K33r84GfMBfdaUaY3uex4mAevD3yiiwgnojYCt0ut+71iUawL7
	0VUYEqJw90GVkAXIINRoEBFTT7MPXBw2zapdof7DhLcl7mJ4WAdlA4f9tcoNG2BFl4A
	epLJrA+7Uk6oT1hQlQTyjcSNRqaQia8GacBjyaws=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1f77461d-1ba26c18-bcf2-4fa6-b3c9-408e82ec95ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a88f9bc44bf7e89719cc34d6066c8313ce328e13a5253ba4b72aaf367689012
Date: Tue, 22 Feb 2022 03:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645500384
