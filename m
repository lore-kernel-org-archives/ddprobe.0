Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C75AA23
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 08:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647158784;
	h=To:Subject:From:Message-Id:Date;
	bh=a61CfC6KJ7yZ9e1dHkwIHHWa3ZFKshDa8/EjEiKmc2o=;
	b=G4ckOfS0XlQ3YagjNGSdgArcA9hvraggAAxmVBIXiWVl08Hy3vMiWk8Kne6DuHfW
	oP1FcowSU+GLmEgQ4upf72P4QWGTnbwvc4O9Sz7C+XsRgaJUR4DoA2Lk+yY4oFFJk24
	NE1CrZddgkIo582+hXFtaEm4J5RuR59mcf1277Aw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647158784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a61CfC6KJ7yZ9e1dHkwIHHWa3ZFKshDa8/EjEiKmc2o=;
	b=kDU2o/kIY9G98UxpByuS0ysOjUWzD/1gpBDcQdbCtrNg5VRwE5f0L6Jmjx31X98Q
	ag4Ng83OAVXQ0hWRbS8a0SJMCA+eqXM38U+XBMrYwEtd4j/SUXHeGmRLaZVfRdnlKR5
	eBYlOdzzG7wE+yPApt2VCgR9fit+AuB53RRnppuk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8250732f-84f44282-f9ac-43d2-a026-2c0e01d8f37f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb43073a0b9eeb2706ca5732214ec73237027914336eae81f51116a470fcd711
Date: Sun, 13 Mar 2022 08:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647158784
