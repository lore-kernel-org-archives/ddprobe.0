Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA777E
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 12:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652099698;
	h=To:Subject:From:Message-Id:Date;
	bh=45IagHSjOG3OlDBa9GYeuS0XbZR65zh/agiZIPN8OSw=;
	b=Zitz63kwO+y3CmLHl1OWV9ND9mQ5/97gYmqUy1TBbo/HCX5QW8N+z1XZWN1cOsRv
	j+drRO0SR6t/mNv0zzdUOx3gmjvkZSRrpUg95oXmnFq6/I9nkTGPTkCaPR8QoBdMQPa
	2uR2h04+g2DJVbaLkXoVsDYzJjsZA9lFbgK2wLVY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652099698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=45IagHSjOG3OlDBa9GYeuS0XbZR65zh/agiZIPN8OSw=;
	b=cDgOHVWe7nFYwWTg2fdgjXL3BFArGDScRh4rAwT/dYQCYDepncq3jAi1Y/RJHhQa
	UxBD3X+wgGC2QXd58mT1AuJtpSpzXalVVvl8avNkENn7mecZ2y1bYda/fnSJ2le61s/
	GaKxRkrz8w/ObtZQ5YW2N+pSnQ/mVE4TYh0H9TyQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a8d0ced4-a5f5032d-da45-4a5e-b4bb-032f35583380-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36e4c584123012a8fc3c1dc861ae3981cef9542cdeb3ffb32c1198ec3c50e13c
Date: Mon, 9 May 2022 12:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652099698
