Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 852517A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 02:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647742884;
	h=To:Subject:From:Message-Id:Date;
	bh=j/bH24R1WJ86bwVkH2GWzBog1OwmoeVwbG4X8SXdW/Q=;
	b=exOeGoq3zf29TWKgosCGmoKm+BoegRXApMGRL3pp7PuYu3g6vFEpNnoQ7VXaoIbs
	EeQ2H5+RgiJMWat3mc2gRZRAtRwT0LmyJvk/jLbdMTwH9CZ5ngj25ZK7hgofFL8Sm4N
	aLnFcjjpviKha1XghEjvdXHHA0oXl9Cg/p6MxV1Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647742884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j/bH24R1WJ86bwVkH2GWzBog1OwmoeVwbG4X8SXdW/Q=;
	b=JwCwWbbAalDW0Z/f1JT0VmaY4OSuhC3Y3ReFyKj1cLRpMP5F82JcZotFMhaMnnEZ
	JkvTOEzEHWh+tN4mQbgXTkihPIYWG1AYGqak5c91AjbGg87qfZP8j60IC4yasFWE9JP
	l+ryDzovxrKqBm4RXcalCDdwa/y/ptJYoy2aOfAA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa5211b6e-152cc259-f967-4800-b4ca-6b6e4ef5ea6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7dda96dbd3d9bf38a1dee842fe8a4c5bad073e14f84ee5333b95d6cf13aad5fa
Date: Sun, 20 Mar 2022 02:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647742884
