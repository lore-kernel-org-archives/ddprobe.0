Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF931841
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 03:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653622859;
	h=To:Subject:From:Message-Id:Date;
	bh=hm8Ahu9aLf/RmBTgOrKPIMzt3rS2Wh7RfShnobhLQV4=;
	b=beSpKg90lobQU2jV2/hIPnVKZ1yDGp2ksfxkHDsnbHkwNfvFrK390i7eE9uEgQdj
	BRW02K22Sl8VFkvSIoR950pSlMpNfMK/a0M3JanlXR7zzPW9X/MmLhrrTVOOhPFfx3q
	F8pV4IqJZ6+b4cGufYxXYBhuNERqAfIGMal7uGGU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653622859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hm8Ahu9aLf/RmBTgOrKPIMzt3rS2Wh7RfShnobhLQV4=;
	b=V2+rgZSGQGFh+jtxoRzMckcsZydbL5HvKWzwMvq/2EltZydY8tPWM1qI9KBJzEML
	krJjxITCqXkriOyB4bQ2ejxgassu8MVexaM2rbLsoVtTAA79rRljZ+4DgFjjl+F7m5u
	iFFdUNLG7o5PJVPY8cCdxGvQ3qfP8b1UGYowQ6+0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181039a663e-ad81b30d-094b-48c8-aa64-652c903edf1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d07151156924e6ccb69288eaa4d6f37c591ea02708994cebe1c20f9ac0145a1
Date: Fri, 27 May 2022 03:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653622859
