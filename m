Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560187E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 08:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646986585;
	h=To:Subject:From:Message-Id:Date;
	bh=v98uIqzm4YaqwHNBMKa8HCg4IDCYCGNSaggf9IuOA4Q=;
	b=NXP6dtC1PMlrjdwvdtnF0pKQDzI2MWyYr7pN1Pfc3aytn6pT62qa51OFOE2IK9NU
	55fsSwm1SgoXp5Q0eF4TZ7TSuE5ZZAjHLUDzzHoQ8g1mWj1Pcx5eUNdTYyMogDBjPCq
	Uh7V3OMA09Lejo2H06plUxQPGwOr33ZJ4UV9yYsU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646986585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v98uIqzm4YaqwHNBMKa8HCg4IDCYCGNSaggf9IuOA4Q=;
	b=AoI2yzgqOLdeA48BNpyidap0a1xtIjifQI2AhMpNJTMUdDEGBgfaElTxaUrayQbH
	ZfXq891ex9NQNI1U3aWxPwz/XKAQ/TIAnRT0W7MCO+naoEEgolPgQgMNaOd2F6DKWOx
	hxZzTTpkRSbhEK+7/lJX7YwCXxHIkCq2bbcg2KQo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f780ce30d-4ad49c22-0628-4419-835d-181b03978ab3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d974a89717239d3fdc981f7d0671ba04d684ece2e4563b241b6cb670b73ff173
Date: Fri, 11 Mar 2022 08:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646986584
