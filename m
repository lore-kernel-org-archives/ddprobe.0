Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF637A
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 14:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650206159;
	h=To:Subject:From:Message-Id:Date;
	bh=/+n6eGLVkaq2+haGXoWpc5bEtMFGjL70kPhpZcvmAeA=;
	b=HRPV0b2FE3T8F4zI6N35ejIEhd5UgfIKG2FtsEw+NFI9dIwncj0uM6e220Q6JGV7
	X+F0nE5xezXTZc+x9N2bDQTuVef9Udtc6mcZ9x2HMVNGnotbP2tRpTcN7pDitw+c/zv
	j+ZHxvut/AgNuA+4KjlmfDFfLu9s1xIGB+eupPgI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650206159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/+n6eGLVkaq2+haGXoWpc5bEtMFGjL70kPhpZcvmAeA=;
	b=QOrUqX3c9xpHuuXJ3RhPJCS5MHG3I4gBNJ2rcVOx3dBkXzmfqx5vzM1LJlXnNmaz
	hJa8isM/haIIwREEAZt7Fwiwk295BzwTbnQu7SQR56HhdMww5DLI0GkZEEOizWXRFzx
	TlH1UIkzUxGIpw0+zaearc4ULtpzr+pkEYdtzqVw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018037f3adcb-88e2d8e9-da08-4c2c-b241-8ae30c75563c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa124180bf902542e4ffda2617dbfadcae27f2ce411fd329803716bd07801c30
Date: Sun, 17 Apr 2022 14:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650206158
