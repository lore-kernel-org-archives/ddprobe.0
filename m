Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B1C7B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 10:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658312812;
	h=To:Subject:From:Message-Id:Date;
	bh=TtlXakWhzo2G7IgTMABiXaG3QTy9indRblTWUoxumWo=;
	b=NZq5HXNlHvWeCSrosmqKezRTWUtW8aQ1EgwbniY1H7IV4l1QxEbd3LHW45oar1nk
	Tq2jSGkher7a+1CB+MgWGbx20j8liminH34PFZYK0Da4cjx08N3KWRbznh3LobXI+Yy
	WCZTxjBlepEcIuhF8pIBST7fukfjiEZ+Rv6cwMaU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658312812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TtlXakWhzo2G7IgTMABiXaG3QTy9indRblTWUoxumWo=;
	b=fBiM4wSdpFt7VMrd1Un9Bpk69EARzPJDsbxPAt0KWab8R6XYx9shTnsOv0IKy+lY
	ar3fMlHZBSHuYulP0VWqTim59EnkuosbRryB1JBCcatGAaL7YEtYVaG7qW9e0y7qQZo
	8JlWSsDYNlY0kiKk/4YLuFBQw0V4NlAad2p2rGOM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821b256709-a1113f3b-6320-4d8e-95b2-209a6b4b8751-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e8cce904d3471351e3fa5897b1bf2013394058cac961fcd0bd9564a55a471fb
Date: Wed, 20 Jul 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658312812
