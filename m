Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C99B1363
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 00:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654388339;
	h=To:Subject:From:Message-Id:Date;
	bh=7lBWQXDeCSvLlRamTmT7xd8t8L+5m/kT5wL2vgxIiwE=;
	b=J5yH+4YNPxfQfKB46HJCyZMbSZuqkS0vSGIik6Livy9eUigv2bcdOHRcxsinbhl/
	WSFZdfEAt4hpCNznG4L/i3ordcdyyRy7VYUTq+L/23/JGHi/S6Fy1F6KaEezJGhhld/
	1RYiQ3BNGfEk/8mmLyUsUq+yIeiah1clQhmhpvaM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654388339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7lBWQXDeCSvLlRamTmT7xd8t8L+5m/kT5wL2vgxIiwE=;
	b=jKgamkatPSCaMUnLixErV+1SD5MfhDL0jVew8hvc3YfEBMwdzv/GdH020nlV1tTK
	UuRE1BzANqtRznprAYLUdlBntNYkiVHd9SIBjTid8mVpqoYpqzav0batJfdgMFXB5TI
	TbKeYT6saO+ksOE/pdIy1svOgh6FcmU2t6yrgIeg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181313ab25e-e04bb4c6-0d43-4429-8062-8e5921e904f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d6f209944006cda52934e7d4b003f7441e17328e7e2a9555feaef03bcc7c8cd8
Date: Sun, 5 Jun 2022 00:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654388339
