Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93BCDEBD
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 18:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645639285;
	h=To:Subject:From:Message-Id:Date;
	bh=53EzuWpkDffuqaMuWG2Z6alLy5QgPN6lp4bSzTIh7yI=;
	b=VSIpICHhVfHM36vhsWaC1by2v84JESP/FXh4fR4/gcmFklgGJF5mtVMvY8Kiq7ek
	W3eDbQ+idvoYf8hT3FUKN3f1khiq8r17kbXv4gx7hNt1Dt0r9B4ir0d4xN4x3beG6GD
	HEnTbIifVPTpNi7M6rhxRN80/kOCZpCzAkGpJCho=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645639285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=53EzuWpkDffuqaMuWG2Z6alLy5QgPN6lp4bSzTIh7yI=;
	b=kyBvaFAqFBmQtls/swsrPebebsZQ0tN0iUcmmnHgbV4FMKBCIIfX722auXlG7L5N
	w78Tgej6gEdThaJ+hp6HIkbgvZDVjT9dmdk2SG75Is1/PkJcZIHq+pbzuFd3JBZA/h7
	Ki75gdB+/tg8/ST42pJaS96cyS8OY8Y2UW/6cHkI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f27beb89a-ed6db01d-6282-473b-addb-b3c49b1ec5df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c19632aa78c0ffccf3763caefef53af1d3ca9e33fb16cd2cba1bda8fe7d96571
Date: Wed, 23 Feb 2022 18:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645639284
