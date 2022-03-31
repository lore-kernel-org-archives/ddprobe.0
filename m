Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081347F6
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 09:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648718579;
	h=To:Subject:From:Message-Id:Date;
	bh=kHwm5Aqu9YbHckjHirtFpvDLx3qPAixBeEJ5JaYwRnE=;
	b=mToyYoZ0dJm+umjAl8BC1s4069BoIZs6C4yONZyNYXC/c0q7SBv+iKuc3cqf5+6d
	poGUI/tUa57zQ4Z+j/btcRQ88IaHVJob6NTrvXcX67hVWwBlS6eQ88e+IPY5uz3Y6G1
	YZrNoZQ0xyARTBVQyYbu8hzaq4rOFUG0Tyg7ayiI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648718579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kHwm5Aqu9YbHckjHirtFpvDLx3qPAixBeEJ5JaYwRnE=;
	b=kN6bnWfUZ3/ubJ/bimSHGq1WB8XOex86EmHYUNWUKJ2H4mlEln9LgjSk/vRTFeMB
	oL2bG76J0bGdxPbY2979EvUGvYuOt5h6zfEveMhU+26khZFFXQjE2YVK4bSMTQWJYb4
	vz21h1sCbVTA8voWZUTKdHKPE3IbJBL358nXdD7A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdf490297-74030783-c30e-4e19-96e4-83e15d51cf60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f352971ee5c1008c28dd89dd5afad71d2170c8c7f9b95c05d930f1cabc1333cf
Date: Thu, 31 Mar 2022 09:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648718578
