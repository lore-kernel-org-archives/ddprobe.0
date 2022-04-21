Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244452F24
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 21:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650577078;
	h=To:Subject:From:Message-Id:Date;
	bh=B1F3YITFWvzr8Vq9UEsstdmtQueDg5ApA69e2/Zu+vI=;
	b=ejiWZy2gnz2Z2/4wyvvKbdC5MbIhiuW3IdDS4belIv+8WFi2lrMsrEil2xrxJYlk
	eXY0+iAcjvikgIBx499pciHNQnkURh9UIVmT9DaqwWD3DMBBoA7P2HkmCbJmvMrdeYd
	y0ixragdbZThq6LgzAxP+ioZgIxMs2cd8VjTFhgc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650577078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=B1F3YITFWvzr8Vq9UEsstdmtQueDg5ApA69e2/Zu+vI=;
	b=gpovkG/W/6IDLZlilSoX4i/QhHKWXuTMnUKTKOWq4QD20ib+Epx9Bwr8hrSfb3Be
	eJSDXDPCy7dcFRACelmfjBx9ndU+p4GHDWWk01mc3/mVNDVvoHtpLJteX3NTYXZjjRS
	u+cEKwWTly8cEfPzEhtuPOaqfHpWiOxVCYPr8dZI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804e0f77f9-1ea4a230-ff3a-447b-808a-a7ff41918d9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60c57dbd18eb56c3be42833d062e1975cc4525c79324f949a599eb6f70693489
Date: Thu, 21 Apr 2022 21:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650577078
