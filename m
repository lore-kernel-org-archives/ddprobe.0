Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A595A38F5
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647459085;
	h=To:Subject:From:Message-Id:Date;
	bh=rGQ2AeFIQrHZqLtSjD9a+VflS6FZ5qVvNngPNyKG9mQ=;
	b=CFuJdAwyUL01cRx0IO1FE1sjLQV7W11eT3fLNQnOiEkPWozJTTgccBf7lkGb1lry
	lcnvXn69I7bmibg1n+R+XpnpIWmw9ozgI6Vi8Hve6/IGDKxpF2o4a9CDsbCSjJK5YEN
	dSQOj6rn8R04hfR7c54ALPC677NogOQNxcFf2uiI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647459085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rGQ2AeFIQrHZqLtSjD9a+VflS6FZ5qVvNngPNyKG9mQ=;
	b=aa39OwCFPNuP8cdMX7aTGsvGSsuZTL41GHPJSyQaJo5Psk5aIF+B7uhaluzxZiGH
	mGVMpHO9/lEgGOluA/eF8skDP0N6TGAzr/q/3p1oaFqwub2uXmx+K++3iu5WEvUmHpq
	+IhAJXtTbYZlteLvQPImQzCi4l5l+E/JH/nCF+/g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9436aa20-2d64beab-4e08-4b3f-a2ea-e74f5e11f3ad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3b1e6790488a0669ae21b1a31874b9a6f8e7716c0f7aac735b76e00ebe3f898e
Date: Wed, 16 Mar 2022 19:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647459084
