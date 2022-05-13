Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B8C2598
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 11:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652442059;
	h=To:Subject:From:Message-Id:Date;
	bh=Bat/qmx5UmO46pqhaG0GNS2S6l3lkBq0aY/hiD9A1GA=;
	b=cQlcsFbqoL3Fvd3WiOIRYXbV0DPKQLPk1i/9JRarElZ5pPZqh8NRs9Ew+U7gUafm
	3O+LrwihUhv8IwhDg2+PLU/u59P8eyv2l6AMY6Cxa87+MyAQWLSB7aSWSwnwMbONWiH
	1MkhvYGTcc8BX/gtbEtIFezQrvlpcOYhxeudgies=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652442059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bat/qmx5UmO46pqhaG0GNS2S6l3lkBq0aY/hiD9A1GA=;
	b=FCruHCUuc7lT3nLKaZa5eYlEXRTGYHNJrM30DtepknJBuMDOK05JjiDxBn3MKNGm
	GUdARiYHoV6wy4HozGqGnSUXQETT5rBaB/NzQPQQVHWGmuXuuHh8iddXpMnLG18NKRK
	BoEz55ZnhOkg1R6mq3XNdfzQQ8Wto+NK4XNLxFac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bd38d1e2-3b59fe91-1a92-4053-b68a-a4aae3b6376e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 188f3717a579a76646d7082944d83f59ca21e3192c3db2f5c21ec1212233d02e
Date: Fri, 13 May 2022 11:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652442059
