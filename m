Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BCC1843
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 21:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655932799;
	h=To:Subject:From:Message-Id:Date;
	bh=9vwyBEmoXpEEMPTS2a8ybqHvHjScdfNkGZfczFUsKTI=;
	b=gknsGxy0fycBgueDNCEhB24mNMwy+/MaC+zl9rNhpy/5K6AgVIY9rkqn2bc3Dea8
	8i94oVWS0XpWV+iosp/a1HOqzH1UHoOsPpELDzN2A0vo79ndtMkyUvIgWD+ZaIVkjDg
	cbAYResj1AvDyVTuraMPM3vr1dySls3Oy5D2t5z0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655932799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9vwyBEmoXpEEMPTS2a8ybqHvHjScdfNkGZfczFUsKTI=;
	b=hMtCmhp++ZdsT670uqUpXz3cXKm58p8U3bB8fxi8RPvoe8aO+aY7aZbLf9zD6FY4
	ZxK40TVRaK1d3z3+Ev96yLNQUa180tmQjxf/AK++sQZSVl2mL2MN+5cC3xfPUP1IRaB
	OyIsE2Fc4vrhNX86j7zTxY4uMiNdDqwfQus+eub8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818d49492f-1851d106-569c-46db-8430-cbac5b63bcb2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 286983d7322051db8cb756f687647a28b952db2079aa552c17c6d97f92a77101
Date: Wed, 22 Jun 2022 21:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655932799
