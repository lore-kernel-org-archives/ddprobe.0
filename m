Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F061365
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 09:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651223218;
	h=To:Subject:From:Message-Id:Date;
	bh=oSLtnu2ypy3Feq8r4Fxk+Qay4fqcrZda+ZsfHeQMFP4=;
	b=FmnIzvUd8W2mdnL6SzZLKYay2nfsxH/VA9Nv1sJF/LwSr1ciRyooVqMp53CYHcvG
	75ey02LXCbTyukdTLJuMWlEKQLvjlrAIAHZMEf30qXbEVG3oZURVSGQA7UeyNDRa7qR
	YejQ+0ku942KNfCg6KN+OItXPfh7CW282ZFmAngs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651223218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oSLtnu2ypy3Feq8r4Fxk+Qay4fqcrZda+ZsfHeQMFP4=;
	b=Eepwri3mcFMdpQka419oZwLyKCOt70+Bmf86QvAadvfEFxI8F2EmhsOoo9A9iIet
	p/quG5925y0BhN1GL0bEUwv0xECAcZ1jOC6enNGojv3mDokx04hXRnjFrri1p7tsEBg
	ZuZivKlem9uK8wFXRPbbee9XE4miQsiH6bfTly4k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807492c847-dbbf6ca3-70c4-412d-b804-ca8a40592082-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 505364a9ed7ffb65a59c0b400cdaa594e15cc8d90527a677172a3099d2b440eb
Date: Fri, 29 Apr 2022 09:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651223218
