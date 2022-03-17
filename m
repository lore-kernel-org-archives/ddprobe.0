Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8688748DB
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 18:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647540985;
	h=To:Subject:From:Message-Id:Date;
	bh=BYO1O+/1jos/DOKjZQDtlbeT4qZz0N/bNoaaBRAS7O4=;
	b=l0+YfbzVYWwoMp+8/jVp/fTaGNLC1u44+KB17ZulcFkflVCPKNGQRHhBW0j6162c
	Uc8N0r7ORRSC1mQ0EFCPQHTC1OwKCFWFm77TqaflH48xtWpMWcOQIeXyL2a0FUOPgr6
	lU6O3LryIQOH8XjoCjRueVenuaWDTvdohAn+V+j8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647540985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BYO1O+/1jos/DOKjZQDtlbeT4qZz0N/bNoaaBRAS7O4=;
	b=O/mDzQvnX33mIKIwymnJ6cb7g8pzqqXBSkQONqQjex5rk6MccqA8YXFHyqyuzMho
	ewt1lGoNOmQoO/QpuTevSgvo4/UhJPlIDFVaNohBvRqQ3N1k6DjWeHoqdaHeIeHLyar
	dtfCvGnT0vNYdp+iwVpTvMifTow38HmZGEEe/l1Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f99185bfa-f9e5cb37-9dbd-412f-b55b-35fa0f6eaad4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da7abfbd76b98d8cb85c374cc4935985c2a2ac573fa0e5939cac8e3024f3f925
Date: Thu, 17 Mar 2022 18:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647540984
