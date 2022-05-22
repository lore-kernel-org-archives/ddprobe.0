Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E58EE33E3
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 19:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653249179;
	h=To:Subject:From:Message-Id:Date;
	bh=hwqEwEYZUOq8OCU7nAWsJmmBm5YYGFUC1RGBRsHj02M=;
	b=Dhcfl0EgYhjIvv/1dZoLac/Mdd5aSiJbonbSYAKqPlkTz2s0H7kQN93SkMe5pjJG
	B6fpajuLWDNlJRpPBakv1yWaV9hqYbnmHAo19DxxTNgdr4gmAV1v7ulywO+xIOloPuC
	Yr4swlDmbgP1P6jeBf9ge+TL185raVmzQkIL4ma4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653249179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hwqEwEYZUOq8OCU7nAWsJmmBm5YYGFUC1RGBRsHj02M=;
	b=D1LHXb2W8jkHf80T0pO7G7HofaHlR8SeAtX9gbSgrdkDxUQrBxEHcTCRsJRlR7h6
	W6Yr2vOGqz99xjgw3LeKS+R5xDKrp7A6VZc2eQSKic2D6Iqji01RIocbUCxwqWhexTr
	4okjQGFUXXOOxCkDYW+u7wKtcHw/1ktpQvF6q9u0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ed547e56-f9b5da2c-c5cd-4289-9633-4ab2c54c2d52-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2710827e0417934031c93d791c01d921623f72f531355a2336ffc670a4366861
Date: Sun, 22 May 2022 19:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653249179
