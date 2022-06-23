Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36D81876
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 11:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655983319;
	h=To:Subject:From:Message-Id:Date;
	bh=tPdnepDy4NWBWqlNNoGNKDpai4KygFK3aKtrBlylAio=;
	b=VOwjBh0AG8/PGdqLGY9j1UWOU6vnfLb/+6Wj4AI/KIEUz96ocqkd7of1NBVZCw1z
	JgufRQiCmERV3JwkUL+RNbf7/CTC2GqnktcggbCzsGoXFPEVuO5DDm+3QpLtzpi4ICl
	BtCbEL05gnrFl+1gpgYatax4bwcIYzJXQ3SuPANE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655983319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tPdnepDy4NWBWqlNNoGNKDpai4KygFK3aKtrBlylAio=;
	b=NxyzsF1mWX9DmR+3uVDLdyXkwLAC4x1+enjLqToFpsLDP6zvL6afIxl8U+08EFAm
	ECe5FfRBhrrSG8b/tZGLHcGJHXv86GVzAyPydgJ6V3C7c7RuLK3xUM3FxrupqYyeAzU
	vS0uLh8Apl9W93UVZvzsnL8od+ntx/4YqxgjBtdU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181904c28fa-78eece27-0649-48e9-85e4-851062326abd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9914de41c7c5dd06d4721ed104497f27c14a29fcff66bdaa1c7fff4f220125ca
Date: Thu, 23 Jun 2022 11:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655983319
