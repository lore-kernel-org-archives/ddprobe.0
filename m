Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A87A20
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 04:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658895652;
	h=To:Subject:From:Message-Id:Date;
	bh=5GpJ0p+mdv7fxqBuBLHogF07wp+11WnZ43JpSiOE+iY=;
	b=YPVnmfAGS4CLG6T5Px269IBcc+ZFfTh+j88QJc72iJUYGtAMPiBLCLYyWFS2BtIP
	J7V7p41w79j+cC1FamPnIfC3MQlBB4aCZOUVnLGkLQJR2TILwsCkWzVtdlbShgR3lkQ
	ErsCknTbnAcFM4vYlR9ORw45U7mf5oAPcsJNg+k0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658895652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5GpJ0p+mdv7fxqBuBLHogF07wp+11WnZ43JpSiOE+iY=;
	b=J6azLwrfPtlUta7l4BH9UwuinOsnoPPDFn7ZX3kE4yUzPKCYQvAvjAEz9xQEW72A
	+5g9QLn4JSNfZYziipRf/RyKN9VLEYQ3TDXi/5LX/OUS3QaBN/CQUSoHFuRqSHbPNYk
	KP5pbv5oPqldnse+8XmYQE5LsrfCanhZiHBgJzuw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823de2d6f8-f2dde08f-b558-4490-9fdb-e6d09216fbd2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 325e7262ea0e29eb9732210772cbbc2a3b577ba14646fb768af74dba9057a5b9
Date: Wed, 27 Jul 2022 04:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658895652
