Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96A9128FB
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 18:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645814785;
	h=To:Subject:From:Message-Id:Date;
	bh=Xuj4F/rFv386Fk4ZVC3Mau3UkIWm3o7dtcDvQYHhm7A=;
	b=JUU5kRO+qJclKeljU0nlFVF39KB3mp7HGb8WZNvOx40LV73uEMj70QJ+7Glt/Rh+
	Adc0lu3msT11coG0KK8a7hzDHll2Lb8NzH5YnyDOUDKaiBQ50KK4OeEKKTgF9eAKNrv
	dUlAZ4hu6iI17hGbCs51YaEQwuY6lVsHVZLLysuU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645814785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xuj4F/rFv386Fk4ZVC3Mau3UkIWm3o7dtcDvQYHhm7A=;
	b=XAX1KQBRXaoclUbAKAUU/oBwYiB0NsqoK6HA1Ar2DNWXT/oKQmad2nwFAh/zV3e2
	EE5t0CSWrFNewsuw/fpyBfbOKOpBCudD0/DdXOubcJm1MOgFXRROxAjoUQFamWQ1wKC
	z0P3e4ALP/9lKvhskxOd73z6yCjEhPbl8edmQFkg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3234a2fe-9c2020eb-2ce9-4084-b8cc-40186ffd4895-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c02ffc74ec4070d87d242af88ae41194ae1f0aeae45b74ee46ada2e4551b266
Date: Fri, 25 Feb 2022 18:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645814784
