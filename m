Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68B143D93
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 22:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651098358;
	h=To:Subject:From:Message-Id:Date;
	bh=XgDbk9gYdxQrp5HDtgCYjmFoi/9nQ4G4IS4sXn4enkQ=;
	b=XcmG3SnPU4Jlr9qQxPfx5/qD+qK1FdlGNGRnD9voOBWx/zXwplFL4EpElHavAEmd
	fazd25WWgUI1qkBGw9E0xrs3QPc8Bd96/yVtFYb81mqv8D7z7AaCBhSWiCNqDSBM2tS
	aaCi4vxE0cHWfGzasC7ihf6xm0uiN/pjUaoashLM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651098358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XgDbk9gYdxQrp5HDtgCYjmFoi/9nQ4G4IS4sXn4enkQ=;
	b=jVuO+1pKQ6qSm5QSFRF0hK4kDe624WEt14eEyIwldzrHX2Jvdc3L7idOqlMFbp25
	WYz7OpC2mK3Dx/SXZBoWwZZfSbch2aPRA4XvFPcnK4/m8m86RSRbMRnea+Je76zEINB
	lYMfQF2MkEn2WHygcGGsIFymEkdjSwsNdReOC1UM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806d219234-6956865d-0edb-414e-8079-6f2a4f343569-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e26d8aa4fddb3fc4e450f11a3efab9c71f81cd2a05f50283adab8cb4137b18e3
Date: Wed, 27 Apr 2022 22:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651098358
