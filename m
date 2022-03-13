Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 858CD2F44
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 20:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647202885;
	h=To:Subject:From:Message-Id:Date;
	bh=v7GsnGv5YpMFUtpKuBdtH1pjSgzlZviLHaLb58IXi5M=;
	b=MKd3UX3yLOsOphSCYAeFoun1PcGl7X659FpX0MilKurOLqXtABLSBgYW6SMb9cjf
	oAe/ywA6LR0MM5ha6vt6HIWFYF+9z/XatST//lygMRlSq52VSBvxV8S09GLUfsDQdUm
	yA0TlSGJiufICI19R8NYClG0RKZamFBvFIvtU7sU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647202885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v7GsnGv5YpMFUtpKuBdtH1pjSgzlZviLHaLb58IXi5M=;
	b=CjbPRBJmJwNt1kaFptW+v7mqC22XO2D4aSMg52QrGXhkK3FS9cPUd7T7p//Kimuf
	RhurG+5aoAttHuk6Pnjx9yc9LaiGu9qbP7WRYSWXviLZTddP0DM3orHNfsVOIsVuP9q
	3139oGVGJgQlPrZBhQfsXkB8g5VDVad0m0G8APfo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f84f15ced-470b390d-36b6-468d-9978-a62088de47f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4384eaa21f5717b46b69933f9780710ad38f16fe3ffbb7600f4e199635dc3cb
Date: Sun, 13 Mar 2022 20:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647202884
