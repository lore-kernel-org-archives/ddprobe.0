Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 616AF10EC
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 02:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654309619;
	h=To:Subject:From:Message-Id:Date;
	bh=vE3i5kh3IDBITj4AAk0RipHShyGOcJ4nLzmfskofiUI=;
	b=PIwmJYIw36MR7g/7bDKnhAypg4jNK9fwkdyQzvWqp24V7ei2+cYmj9mSCO3wGVEv
	I6XmR5n9eqJvCMTxqZKX6iZQfqQJs0+8l4ZPhG2hbTTgjQB7EDEWCQgiV2Z5xS0Ji9h
	K9z42A4sOixJsb4pn7xoNHMHPFEE8e1UtDNh1ILs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654309619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vE3i5kh3IDBITj4AAk0RipHShyGOcJ4nLzmfskofiUI=;
	b=R5E6HSJyw5Up5JC5J2+7Ip23GcIETc9455RT0rOLdsJRMY5dEdJdt0xjmkakmBt4
	aOEO1iKUV5NO2kJuOoxFkAvGx2yA/6jyw7JL03n94zmWFSfrOnW1CgueNr8wNu3hnKO
	akYXVlJMK8nLE6Kb/gHlky8yxS1WgPJW0SjS9+AA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812c898664-7cf19db0-67d2-47c5-9658-36aa2f043759-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 79263befba6615ec5f8723a612506d361c0c2582ef552c0984ae324762f7e42b
Date: Sat, 4 Jun 2022 02:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654309619
