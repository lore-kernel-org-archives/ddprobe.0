Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1156375
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645531284;
	h=To:Subject:From:Message-Id:Date;
	bh=oo2VQDNRyr8yeCeNISr6uXIwkKpIaNDRNBsTQEEpP0I=;
	b=KAFmcJl/30wCGf2ileuRnPdWG4XKp+zyA2osA0UXH2Ceig1r8pbPyxkJTFHxDcBX
	K0lKMx6ALhZD/n73OOISiMPiH1DKRzEyD2x8HUne+7W0r6HHSRS/mzV0aGix2WOe4rR
	ip2hyJMpKyJiI90vTgbxanr23sGurxSaG6JKyxb4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645531284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oo2VQDNRyr8yeCeNISr6uXIwkKpIaNDRNBsTQEEpP0I=;
	b=WBtswWXQcK5udvuy8rgBZ5ER94ep1gNrO7l3mBJrg1kk8xQlMflQLcDcxfdVlZbl
	h9SanP5F/fFO+oiH+ZatXkbfpiYu8p6H3SEDM7HUINPlBcDshaKp1Q72xVSFiOjmaiA
	ZSFmS7g9RjASpjMdGgmXq/cV2WgpWZhwy8JYB4Uc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f214ec50a-329acfda-2d19-41d2-9df9-3658b21f278f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ea1b9e3e3555d348cf5a9297d6b74b5b3d11417cf4b0b8588f7b87058d71b02
Date: Tue, 22 Feb 2022 12:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645531284
