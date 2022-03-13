Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEB657E
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647177085;
	h=To:Subject:From:Message-Id:Date;
	bh=kt4z6yhVMeaDfFlba73LpkFcre3fKE2PiAWNhh4fsZk=;
	b=lzk4+E4E4lKCvReQrOHUNiq8EtZXM/jmkcAX1bXlEiZHuC3UbrNmwZwgOOCDCRa4
	+DOOUDWs0WLWmxmiWe1pP3R90QIraPyTby5WhZgtWRwg09GS94hCiwx8fMU/2vfkCCo
	OXDNl6MS9Dp2Onj1GKYX6hS8Y7H8JnzvBHJagwdM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647177085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kt4z6yhVMeaDfFlba73LpkFcre3fKE2PiAWNhh4fsZk=;
	b=hLoYoWgRE4imKZcGz5jKrykI5z0CQDXnZwT7KOZkpQVYT7De5bYo2Qq7fgFuR5B9
	T7eL7jkNpoiuFTEZxzGasG6Gy3zLWp0t+McmNpGwoX9ApVxPiiUAVciR+9cn5IEIS0+
	75nfDM1Khylyx+v5V3M9sAUXne2u8eu8Z7WyFrws=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8367afd9-dae72513-1b12-4384-8692-0486546429f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfcb9c08e4be6db307145ed2c82f4afd021bf07d4cafb1e88d3353c3813f2dbe
Date: Sun, 13 Mar 2022 13:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647177084
