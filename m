Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2F7179
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 17:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658683612;
	h=To:Subject:From:Message-Id:Date;
	bh=wLUyAlrqa3LYgFoQQ72LrnjjqKT6L8PZ4280WHBg588=;
	b=NZCH6i+VMMiuPPQzqvudjHglTGoKyWtb1JAcCjE5sHd1y9JHPh/i9tyGSZ5G/vC8
	R+Hhdgl4TRlFKgaVTvvgAeMEp7Ak+NfjBLRC8QO4iAUxddhlf/7ya2HIp39Mt/YMcw9
	mSyEeTOqQ8Gy+04vfxQeDmR/4eTQgOBE2GOsKuu0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658683612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wLUyAlrqa3LYgFoQQ72LrnjjqKT6L8PZ4280WHBg588=;
	b=b1Eliki4DPMnzhiegf03HLGm+93mZQTO7yQv89LPpn3kaVida/hPTgoY5abI1oUj
	ZBICXEYNIWDCo6mp6slbbL+P5FWj2EYr/QN3xahqRYBEjlk/YH90SVoeiYdFt9J6qFu
	g53m7ulCHe1je6r1v8E2VkasS6Sn5CYmuxwvoLdo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182313f5c92-6905148f-402c-41df-9563-a0b75041cd96-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72b6676d6b6127baf0c5109d2be92079ea632bac27a2a3f97f5f09cb8010ef59
Date: Sun, 24 Jul 2022 17:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658683612
