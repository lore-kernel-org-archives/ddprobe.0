Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F177F7E8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 14:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654267499;
	h=To:Subject:From:Message-Id:Date;
	bh=GD2nIayG+ilB5Lgm/mG99ShU9yJEfOtvPi7XeOzmHzU=;
	b=Dx6K1lKSEnZ8fixzUneWwIG3bMU4wbn64Y3M04OMBMCfpuy8ky3aE+tBl+mVz+xm
	v20GwdcEQQwRZxONJIOu1pQMLu37hwGrLmJS2OdFoQYDCxp+yMGFlMa5mFABZM1QlpN
	4zn4G79Tzu0SUt4DJwGOrMi478r1gOMBNgb/PV9E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654267499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GD2nIayG+ilB5Lgm/mG99ShU9yJEfOtvPi7XeOzmHzU=;
	b=O8uT9gPl2D8rGmI5ayKO9YRrB89FdM1q7yoGBPM+TaKZPitGV4rBPPTbyac4DwTP
	Byne08os9e4ebZUKQf01S6qej9HzOU3q9Xx2+H9ntNq8bAYpUJk8UlvJVKsp3mMZtf+
	doXWbCnNa2NGxhZebOhL8r0ueqmoWxQD/Us89SRs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812a06d321-2ea29eba-15ec-4747-b605-257a43290922-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9323c25f4693f4934dc265bf39a19f787b8d27c9544eba6ba2e321a9aa9ab54
Date: Fri, 3 Jun 2022 14:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654267499
