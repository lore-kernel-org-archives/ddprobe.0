Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78799EB8
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660470052;
	h=To:Subject:From:Message-Id:Date;
	bh=ZOp27TKBZ4NPXQqiYtRwv0rCws4f7SN9RZz7XXLHen0=;
	b=iz0xMP2Ni/78gkS9D+dUwtYsEXbgaScPRJqTWy9Q82D/9q4rCaTaqtwc+filvw1b
	5AXSsnoGZkKwlzuxjqHnQfFK+WQi3fUdCOoYYEyFRATp7y4OlgICNflk9/F2X4Ij/2S
	lOpbBcArceaXgisvBTMHQ6xiFfmNJEM2C06KI/OE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660470052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZOp27TKBZ4NPXQqiYtRwv0rCws4f7SN9RZz7XXLHen0=;
	b=V5+1avGT2/gH/WuAhv9VgmkBUL+Mm//LqFx7IXxdedjDeNLLCTFhgY8KAZJ62PXE
	xbRCXVosXHypUX8/QzO4SIeIzdqluclIEn3x3525IdcBo5aN3xHUBLaSzqUqBXmkMtn
	Nl6VvSVm3vRti/bcdmmsCpki59C+OGgN4ja/celQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829bba46e0-eb00f585-13b0-4372-9b85-884e7a079818-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42fefe9248f99ba30bc7b6e7aad4fa287ee825bab4edb43ff4cffeaf4b6f2494
Date: Sun, 14 Aug 2022 09:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660470052
