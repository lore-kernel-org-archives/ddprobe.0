Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D6877EE
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660441252;
	h=To:Subject:From:Message-Id:Date;
	bh=VlXiz9sujoqdxcnZ2PVpol+QtTiKQwnqDKAHcMJguGs=;
	b=I9rIZMxbLSKxpJ9XcnPIDDXupruV45vW9bhzqACsaL+tshIMhCsiNGIfkTiY0ouh
	kFGi4vxK4t4ge1A2xVZQ2KGIf78y2CaKsxauSkeRmpEjdJMlBS39igh/rXDvOXgjlKB
	Bo/wMAWccZOFWNqITuqmv3szv3uzi70HxI+4FV44=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660441252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VlXiz9sujoqdxcnZ2PVpol+QtTiKQwnqDKAHcMJguGs=;
	b=RGzquAuRpgLvhNkBwf2wwJGMuCZUdA58AWHRZGzkxU9U/f153D445TU/T4uS3tif
	nuNWF1HL1I6lNi7Zqx7JBSV8hrrxh8v1P2zUuJ98VWRS1P30CpheWw7WQ7WpI7B9E9J
	dlqHDhV2LMTmeYGXjJgzy6+3opq5X4rjvSXp1GX4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829a02d305-95292c24-4730-4d7c-990d-2b249fa76415-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ea3bd047eb929e6b15a2070943b7a0d602cd87956f7cf56e83b1ab8ff06a195
Date: Sun, 14 Aug 2022 01:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660441252
