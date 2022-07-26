Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6447D653
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 12:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658839612;
	h=To:Subject:From:Message-Id:Date;
	bh=hfIoIasRsqdgoHee2VtEciOhdIiYJU1Qldu6v/eJgm4=;
	b=cx1Dzk/xcL0OjPTmdY77ImOP4P0DZ42D4awIp0frDTgywTuz0dScb/8nd2h9XdHG
	oFHaxUKt1FiihVfEqAKDsQhx9AnGl9HO6C4Ra/2GUKnOujRuMfybhUGKyFVtnkcXn80
	wZ65wjt+wDzHezUdug/cmaCYeiBumS082QEdjzyA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658839612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hfIoIasRsqdgoHee2VtEciOhdIiYJU1Qldu6v/eJgm4=;
	b=NrYptJvaNLdPRdk+63rtcR393MqD/CTPKLDEi7PTJ2c3Xuo2CAjaotikieYX/WNT
	qF72Xdk5984QdxJLq0kue6WgGNdYgS1072HfWO6wvYsx1VnOwclK03vpAqK2AK0JjLI
	4hLyAfLKOMl6/GRcAU+dVwnE9Vuc6fyOFxZKaRn8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823a8bbb63-77a932e9-8fd9-4af9-ba4d-15a45b702d3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6aa39a3a39dc6128f62f7d8234f6efcc25e9dbfb80d80de7f273fad54abe3ffc
Date: Tue, 26 Jul 2022 12:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658839612
