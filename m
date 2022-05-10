Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F4A29A2
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 19:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652209619;
	h=To:Subject:From:Message-Id:Date;
	bh=Ts8HNQdXu8aAu8KLYmsEFUL40UeyOZBIWpiSQsnljQs=;
	b=gbhg8BSSJ2QfcPPwvQt9TFpu484et1p/mR3jKpwlHrxjJ6d/ySmGFX/c28DtVumU
	OPKbnA+U7vT1IJWh7IUtRouBqKY0h1DFvnupxbDCB/fUd6rh4t3Jw29WkdZTguaAbwi
	mF5h1vIij7woAbgVipIFXL75QmpC/406YQJlZDwc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652209619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ts8HNQdXu8aAu8KLYmsEFUL40UeyOZBIWpiSQsnljQs=;
	b=AatKiakk6mv+Cb38FF72n8oJcCD8yjcja0j0XfXc7/ZvkTNGmPf4R6jsQQH2nCFR
	vgzpmGHYF/uCnCDImtbyjhf2Cn0KVPNjd3al/4q8HClVH0eELooistE5KFkHeoaYM8V
	WxrVUCNKiTc9urKLz7Kp0zIAtkXgsmAFPgMEX6Wc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180af5e11a1-7e26b2a8-c14d-4dc0-9744-f9bfa80e21ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff33f7d50a9fd309e2e87b100c86795e83d4e21928524bc19b6f81a7797866b6
Date: Tue, 10 May 2022 19:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652209619
