Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3356F7E
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 22:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653173279;
	h=To:Subject:From:Message-Id:Date;
	bh=iPnP/1tyJci+h2NWd3pOk77jI59ngYgP86cgp40IWx4=;
	b=O2miaumkG4IgiaLhhrhEXj2zpy8MJMEYRFIoLY9kHFQ5VYbJdXZKwK9fMqBRLlSy
	Q0P7/6uZumy5Yc4MEqNVCnYVDzbdSIDKj0xhP9NAU7Zzsd/9E78HIrIaRzn0bpFsS4h
	1FGsw73rs50296tLOHxqEKlWWekGYe2Kc6PYiTO8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653173279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iPnP/1tyJci+h2NWd3pOk77jI59ngYgP86cgp40IWx4=;
	b=ZGTa2pz4qK2BPJpW2po+Pa7GPKNttNSEu1IkUDFFdDI2fLcChbbiiDwHaSzGYXJ7
	AMhUzlu3xOR/NmxwilxT3PGqnTbkaJCCaNmdBE9yxSOoWg5DAEDZnQgaYz4K+FKzHYN
	czfq53WplW2V7HqpEbrvM71ke7ELagZRFUEtn+sY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e8ce5a55-cb5b7cb0-a4af-4e05-8091-da1a9915d030-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 092d32440c90f6c8a5e2fcd7781e2972b3a3140f22fdaa152c8f47e9929886fb
Date: Sat, 21 May 2022 22:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653173279
