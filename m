Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A71B1FC8
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 19:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653678359;
	h=To:Subject:From:Message-Id:Date;
	bh=uriTJ2Ker0ahzuGZbYJYVpGJel7QdcMan5koLWzMjDg=;
	b=DoTTnVvoeUJaseWGPV/mgANoxj9s0Lxfsc3vlttIIwNwk0uJRfDqrOqATfkI9s+b
	A8kWuG/3me6JdIjpbUN9gLn/2XpTRYDFsALgpHwc0hr/9wFLoxAbmNN75PIMqtttnh3
	eADh2R+e7V2kQ0jFJiUSDlR0YIpxOUeexGx9vnvQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653678359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uriTJ2Ker0ahzuGZbYJYVpGJel7QdcMan5koLWzMjDg=;
	b=KoMov0orP2p4ln6v60ScffzqhPmXAttTGnIfHv3ewBVpMltHFaBqVUB3D0OBR9a9
	AULgmqMvtI2w0sec55It4ezIirGzRhz4b0FLG0RKjNXmuZSFe/srRKe9Uw8KayntWHa
	a1m4u8S5ynTZiXUAecPsYdMC0wwPb3vr34FyHv4U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018106e94337-9a7588fa-f102-4dc3-b2eb-add2af0b578b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dca8d8e1c3a26f267454c172d6bc91cf4cd344057827bdfd6832a5cc716eef25
Date: Fri, 27 May 2022 19:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653678359
