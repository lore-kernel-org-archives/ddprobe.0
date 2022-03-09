Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C8F015BD
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646813785;
	h=To:Subject:From:Message-Id:Date;
	bh=f9bX48ABellNgWt3w4Gt2SSYtdhdCUhYoQZpDk0aeOM=;
	b=eDqir+jj3pKg7xsj43FuFyCBwefI5XHHaMXFxYy/vXzBa/ObNi7Qynhx6BL06Jjt
	mTl/Xe2EMEp8RoKO30vFR0EISjEmWafYbMnDo9LVPD2FNKevVmUbmgp0HJ/Z/Y5bYsy
	X4RVly4QwSEwdpwnQ8Uqm9yaHWKitCzP2GtzyrO4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646813785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f9bX48ABellNgWt3w4Gt2SSYtdhdCUhYoQZpDk0aeOM=;
	b=jjW2Vhq6YV/tUFuiY0KLS5qbIatLyd82xasoTVdzMD/P5IJRE6lPHIeMaZgvwIhY
	fr2GolBJrww1vtpGX24vFNdUkWvt3eWCzwpOIBQTV3ZgtMDl7fOknFh0wJGj4Pt1PeI
	beO1dcxuO50znzbr3p2/9u6XOKKgD9gXg2XMUOqM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6dc02ac1-40ec27b1-a3bd-4e1e-91ef-70cbe2e2d49e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fe2f626258011e224248269f1d6de3910da2247368e54c32d620562b17e18bc
Date: Wed, 9 Mar 2022 08:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646813784
