Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0C3E7E
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 07:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647069384;
	h=To:Subject:From:Message-Id:Date;
	bh=jXiQDXnrdZ6H9Fm3kfU410NGbokLQqkgJiMO/AuS9pc=;
	b=eR1Q+HCQdi/z1WSQWD0uQJSE5n0B8RnjCpLvDM6tfNPK+OLdzYASKx7BJ2pbOsaY
	XywryoviT+tnv1xH332BcTzTvJQ1bHD4SkDUQorIqV3dT5NjXrvuWkTciVS2Lr+w22s
	+K6MP7JMMiVYO/ZzU+y9zdIB/QSX9mPD+CHXUGOU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647069384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jXiQDXnrdZ6H9Fm3kfU410NGbokLQqkgJiMO/AuS9pc=;
	b=K5zfB90AS9mVTFchNK/G0ci1K6IwG3lXJoRuISpfki+LXUsUa3ClxhlXukqyuu+Z
	OI7i3mSFktK4DHHIyCHvEhzNkS5lt7V84dMFsjv8dG09/TFXFo2HpLNWJOfMUC0/Ivv
	Y9ZJ4fwc/b/dKOaGt1R3jDHB+7D4KYe77Pw4HErM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7cfc5043-92c672eb-f55c-47ba-b7c6-96c3ff624675-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf40b58955c4d775b2d56366c5b26475b62ff45601faa5923c13e8e8747e8f19
Date: Sat, 12 Mar 2022 07:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647069384
