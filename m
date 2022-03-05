Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5920A3D
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 09:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646471784;
	h=To:Subject:From:Message-Id:Date;
	bh=RUgf6r7Xkqi1qSP1oH9FXh05EgzUeq5B79FgJUgkiTc=;
	b=NU1D5cf/cQKCxmXqePESw7qV72kkAl4SHGQ7wD46R1r7JqHCSz3QT9/z5K89d8QP
	JCuEjl+WMeHh7HVGLo2BhYp2tDKoSIUE/4pRpz+TmiGUKeGhonAjk0OOhPjExvCyhkQ
	97gzEjc09QB0dyzWOrOJZGQiOTKHEUf0/+Q3Bc8g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646471784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RUgf6r7Xkqi1qSP1oH9FXh05EgzUeq5B79FgJUgkiTc=;
	b=d+4Dv1G07JZsJinVNN2xYdmnl/Ad4aFuOareJMzVvxb6aJR0TE0mhEWusrKTH2x3
	ssxHxSuWDQOhnwdHwGdCdwl9zLDZTEiOM3bSZjH11wxila3MQKmyRaA4VA0n2P0oB+C
	ccN7/puEBpZ6TEkUHfg3Jtu83sFbzy5F+hK0gEYQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f595da93e-b62281c6-1e50-441d-b76d-a16c5be69f10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cd5fe2edf3d46119a49911c29c3d5b490ccf938d98b60f0e9693519cbed885b
Date: Sat, 5 Mar 2022 09:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646471784
