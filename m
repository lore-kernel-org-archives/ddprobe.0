Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AF8A28E2
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645268184;
	h=To:Subject:From:Message-Id:Date;
	bh=eioIzdh3IpHue/8Qm0jQy9rTPNj+Z0hgj+Dxz8+B4Nc=;
	b=kcn+cMO3w/aQbmtLeN0pDB7vidNroGAq0hXMiSP4JTLBlPuB1bWmXMS1Ig+2axtg
	nKCZiReTR7a2eD2oETcjOgEmXeaWlwSDQ5Eo+4GJhGe++gmULXzVc779Dx6ckzbKmSR
	SY9x1h7SRRYI3iSIZEspM2wOzZyZC97bBMOCrPPQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645268184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eioIzdh3IpHue/8Qm0jQy9rTPNj+Z0hgj+Dxz8+B4Nc=;
	b=Vx5aHDWmShNo/zipUufowy34ERAg6Y9MmWmJqOIe7ejMhxuSFBEoddHehkiPWZ6M
	JgJg5qaZc1qdB3qbZp/EPSn42zoSVz1rbHP5eoK7UQvVUdNQ80cPsxupsEmIPfgflf8
	UixeCvue9a26jkFo7B7/HvIk5Amf9sqRxJWdxKI4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f11a02ef3-2b6c2cbc-8b0a-4fde-9580-82fd3f095350-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d51f6a8f07fc377e7fb900ad0419038a4e93c3dc611d109e88172aee41ab64b7
Date: Sat, 19 Feb 2022 10:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645268184
