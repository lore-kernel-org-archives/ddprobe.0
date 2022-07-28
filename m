Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CD31C29
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659014452;
	h=To:Subject:From:Message-Id:Date;
	bh=/pZd75WTw5fRDFRKnHzFW16zjirj1ts39BDt+nmzwFE=;
	b=ju/TAgPbvB4Wjrd+aV5RPE3QmHJby0kEAreECLLTW3PS5hXACeXwy8y9mjlYDAON
	leVtMOVnQdHpyyViqF81xcIRfEgfd2WpIH5lWX0BOwOwDLr4fsLX/M3dd2STzIkXRaA
	fRUdyzvbcU+GRdwEIwCe33h1MRaNUMECyF0uL/Bc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659014452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/pZd75WTw5fRDFRKnHzFW16zjirj1ts39BDt+nmzwFE=;
	b=Jkl94bx36KQ5PSdheWdytfxjMOuQaj+OiInyOfhST1y+1eY5ZTWCbrAFxVHoLESy
	kHrllz84W7DXDQEflj/eiP7W5MVPtJKQqJdMDZ7YvcYUTREb5OTJ8YFQRLRSd0lIBGh
	jsC+7EV3bAJUC2c39pjN/UYfxYxhawV1A/EpVkS0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018244f79555-261f2d36-bc7b-45db-b973-45db04e9101f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c61fb1483b69eff84715a4c26b92532cd03dde57298bdc5553d0358f7753552a
Date: Thu, 28 Jul 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659014452
