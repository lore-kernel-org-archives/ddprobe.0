Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A5852574
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 22:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647036385;
	h=To:Subject:From:Message-Id:Date;
	bh=WkhcRKPqBkXTnLcy3C1ddR17RCruAcNCwfO3XSp5OBk=;
	b=dllQQcXNoxMX9ksDa6MqBu9nMvUYQd7Dou35RqZ04YgnfrF8mRnTgriaGZNajKZh
	27S0Yz4XN3pKG11LX1P9aheBy0yd3amUddH+aFS2TF45kCMOUSf3Zh0x5NcVJpFkg64
	N4uWZ5PY9UWEGeI7RRRfp6Vdhcaqf57vzyRaU0yc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647036385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WkhcRKPqBkXTnLcy3C1ddR17RCruAcNCwfO3XSp5OBk=;
	b=cyDUjYxWOFe8/2c3S8qsBoz4dfdYCvvwuW0YtaeaiA1ZZ/EY5UADuA0y8/kDV1bk
	y2t+wt45NIYLFYgNVhk/or/ITw9HUMYFNv/90P6nrgi/hMqvE3WDD6Z0yW8MZVx5pUC
	8/V/y3iMKomheJDpRX6YN53HczNjqK1wkgUrPY+A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b04c61f-24e60904-48d7-4e72-a348-4534cd3910de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 488ffb8fd2a3dd23d4f387b3bf4595587e999949c03ce782606147c4876d6923
Date: Fri, 11 Mar 2022 22:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647036384
