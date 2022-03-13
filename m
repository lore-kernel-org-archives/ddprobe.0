Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47507A
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647182485;
	h=To:Subject:From:Message-Id:Date;
	bh=Yb8Rxr8+o8i/mgrI8bikEwF3qkLtfZ6CjLAF2ra+ohQ=;
	b=dvmEdlP9P/YQgII938C4rUmqDmXAjMW6fkyG+LdoEW2Eb7tXspYDA7EwRtVk9z6S
	JsABvzzU9oVsZrvyKMTzxWFA2gm08IVtIqfoIEQO7S8XOs9eAyzQoZ2+GDNksmGfm14
	LEOCobp5MGJcrZlfUgCl0nNE7ptyyZJgQBTA9WI4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647182485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yb8Rxr8+o8i/mgrI8bikEwF3qkLtfZ6CjLAF2ra+ohQ=;
	b=Vq7Oe6RRexebGrwPXngGcP+xtAOTFMJ7AEy6QcqVSqzp7cPaF1IEtSUFBVvXPafg
	lRkCpe9CW5aZ1XRKzDmV8C660a6EASwqMF6fkNGPxFIUwW3FkvL1rzl6Lm4aBj5EmE3
	9eApz3TJxwaTtZy0VbprMGPgGipUrsagQMODTYCY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f83ba1525-e6a88cc7-52c7-4c26-8488-67214078ba00-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3702a5b4c1498a681e23331fec289ca802e650502445a2df820ed4ac7be2cdd
Date: Sun, 13 Mar 2022 14:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647182484
