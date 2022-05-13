Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90B1A33F4
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 17:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652463899;
	h=To:Subject:From:Message-Id:Date;
	bh=Duva4LAl6De8M2Qq60FnB8adTPFDVJ08Nh9DETo0erU=;
	b=GC8+QdekcePDBZkgNr0UzPUXVBZY4K4+CcZW7BPZTl2LPY92wrUon2PN/tQYut6J
	4w66MyupkaBxmy1bJT0bOaB9/gON8gilo3TXER2J0MZPwczAbECqFaeHa/kDZtPrCid
	HVL3OZshAsJTUVUZQCgsXos2a8GrOdJ80uRg5ueQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652463899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Duva4LAl6De8M2Qq60FnB8adTPFDVJ08Nh9DETo0erU=;
	b=cC0Nz6Pdhb0zirMl5xXMiA5yH2/tBFJcpTRlN2o/nJhDxCqT7LoJ4S69QxfzP9hE
	Du+TQBZUxvSXX2R/J1DjUxfFGfb6K6fAzwO3TdhviGde57/UT+8D14++VMiAG6bwjAH
	JilN2PIFodpiJZrEjx1O2yOmPmBiExfnJkP4f2Lw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180be861285-a5bbef40-f53d-47dc-8f89-3e5ada852d2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22627e4f4d5ed4f5ee27dfc23060f03fb5ab7da7b55f83d5599821d9be90c1dc
Date: Fri, 13 May 2022 17:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652463899
