Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 984E57E
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 04:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646453785;
	h=To:Subject:From:Message-Id:Date;
	bh=vBtS0Q3EKej4ceiy7zBg9zw+6UgpWlmHSH2fjXv64gI=;
	b=MKpL3tJlBZWqs5Di+uiLhNnh9TBYCBEo9AtCTmezD31uziYFz5iMp1K+D5BNlxSp
	QryfSEC5Ywd6LWG5VIqpF/ZZSAVEyuqoSyFWkGyx7z955YavucXQ/Q3TigbRo5g2F8J
	wepGvtXNzIHFkTSXK/xOdbyskJbBb6+GYuUamD0A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646453785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vBtS0Q3EKej4ceiy7zBg9zw+6UgpWlmHSH2fjXv64gI=;
	b=ML+vuK95qc/CXCWuY3Xm4vPrpjuHfnhzNZJBWmn24CDbYFEVefBid95lIVg6m2ON
	DLAJhgJKakaxy1spDlb8iUAspvwz4zShFjCfs1EmYkOFETXoAMTTJ5ZEHZIZO56pQzR
	EjGiFEjCm8ungvRtywb5Iq9qjqH8yBQ6SGGWp1gY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f584b00bf-a21c64bf-34ca-494d-8485-515a99ef3ba5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 774e33df056bebb80fbfdffc385f79ca34097bb210887b57752f0082dd16eb61
Date: Sat, 5 Mar 2022 04:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646453784
