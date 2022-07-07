Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1141625
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 10:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657189012;
	h=To:Subject:From:Message-Id:Date;
	bh=vZeRkguF3NAdpPYu4nl/PzZ4Werzkdhrc1DzFo7XOEw=;
	b=XBUlcrbjVMRTa2l0d4USA01P5+Ip8pB6avspzAhAcBuiei2yijCiF1MEXLNSI1+j
	KlNcNW3mlNwX1cnp4gdQo0wc2nZ1+kmgmHbu5PsmBp0D110Yg0M9urCnnaHz/Y2lJ/z
	dMJlf4G7q/x5npgWCXSHKhgRfowSG/+9cVWHBj6A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657189012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vZeRkguF3NAdpPYu4nl/PzZ4Werzkdhrc1DzFo7XOEw=;
	b=Cp8MzdCim64c7yh92cslrZWSVSB2o3v2mhJIJh8iOmhLcyzi+91Crqjdvbeh0wku
	WXmtoB6onL0iy4mwy+Ddjcp3ayUbhYasGofVqlYne+udDE2q67WNk+SnbgyoZKpMXSj
	mYiODPqx0v806RaxJ+4/350b/2c//9vvVp/WjxCY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d8299346-debb1399-edbd-49a4-b59d-14e93700faf0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0873214f7200c8a2ca2a4a2e472dca40aea8f3c5cc17f5946d26f0be6c3610fa
Date: Thu, 7 Jul 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657189012
