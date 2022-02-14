Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E6EA3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867334;
	h=To:Subject:From:Message-Id:Date;
	bh=5Em1FXQKG1h5ue1pRWzLgl7wwrT8hup54jMUUOrP7IA=;
	b=EM5qomq6vxZ/bVYLMfXBfyKD5PhXXbxoKRMeaK4PV5e2x4tf10H/jbMdvPJXhMAP
	INJ6Dc7axKgy5aOiQTXqEKI7Gk5jQ1sq/0m7G4nGSO0KsOZ5GWcR4ZX9WlnOnVcQdDI
	vdKKm3eR+P2wr5oIzlbyZpZRaDGVTkCUKhkPAI5k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867334;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5Em1FXQKG1h5ue1pRWzLgl7wwrT8hup54jMUUOrP7IA=;
	b=EGPLv0kV0x+yA0zs6LOY24jBUS4PPNkMpz9GtRDWwSNs4LaoTBvecORWKVFbnydj
	882eDmu4zQMS5kKD47+oEYMYyDnfLQrvDbjOht8z65tiTujmSht1OX2hNES1ciUWeEU
	aMp5pmRCeoJnpIlsRwtSJySJNOba6xVl4QoGD2R4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9bbb285-be937e4c-81fe-4d04-99cc-5f7b40844b04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 994036bc099e0568a92e1ecc174c37b0fa0e702c734634fc3fe9f10d4010841d
Date: Mon, 14 Feb 2022 19:35:34 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867334
