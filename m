Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C373C15AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 03:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647573685;
	h=To:Subject:From:Message-Id:Date;
	bh=Q7qqo7/8RViTrvb9YBgkNzgPKU8BhlIshpQ0Ptchayc=;
	b=hPYwQ3hbUpr7Cqn1Iwoos1TmAU1eHvSLUN+xxSdYRw4UevomfNzWnM4ea7DERAOu
	DB2pQGQM9Q5wmChdCYL+eVnwIfxS0BVxzFV6TNc9bblmO9s5r3aJ6rLQwU4HYlUDkJn
	Ya1cVh4YP9acCNmiSuOSr4CxWoTK4M/PbOJLvcOY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647573685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q7qqo7/8RViTrvb9YBgkNzgPKU8BhlIshpQ0Ptchayc=;
	b=SUTSDhvCvfEpKUGkmNd518Y/UJqXCBhdCKN5Co+J9FvCv2GH14jMIizgGJrchp9P
	yqsEePCm7Qr8eGo2JzzxmLy1F1BXZOYD28MNOkMhy00sSBGkHWDezwmV+u5MXsTnYfw
	eXuXILW6QhwsZ0D4IWnKgmKHVRx+aIe2hVtpBRKw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b0b526c-62d28ed0-16d8-4e52-b867-240c9e976726-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 996efe647b5e3afefb44b21fe438edae5a0f9b74c1fe6fee4c448d23ad544a43
Date: Fri, 18 Mar 2022 03:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647573684
