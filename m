Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586962F35
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 00:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646700984;
	h=To:Subject:From:Message-Id:Date;
	bh=RpJZ5vG3Z396VHC/RRC+g13bh1jfp6CxVANG1YkJb2A=;
	b=YgPWwCa6oNXgq8vwRCLiMKHMnY4RWiH01VAA2dCcoFbLcoPuequXjnvY5yFnklqy
	ZsWW3MaEd9fKk9MOY6KtLJzUNtp5R9le9jJrn2yODudCM5kNuDhc+QT/nhTjR0KrJz0
	hY856QyUMrQ1MyeTtfUXLPTwj9Xz5Zr8uEC64sHI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646700984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RpJZ5vG3Z396VHC/RRC+g13bh1jfp6CxVANG1YkJb2A=;
	b=frqixVOI6uRG/0z2pSh9nDI6FDNj9om2CKfdMieXmZPZxdnoCpgMqbydxOnNSU3b
	VaGUpQbA3DW5v/Q27idaWckEqiy6z0rhouBQNS1hx85QBdTdBZAHqhor2lv0EPuiHHT
	vuvLehoOPV18mXm7iIr6jF9gzRDew9W7Qt5MEzS8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6706f9b0-edb4fe0c-ba44-471a-b28d-8dcb09116cb9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d4803ea3ce3fe9a5345de416b7e3daebf058576dd73f990607c347a756cd5ab
Date: Tue, 8 Mar 2022 00:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646700984
