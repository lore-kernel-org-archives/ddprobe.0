Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F0C1104
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 09:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657447012;
	h=To:Subject:From:Message-Id:Date;
	bh=plKhm0Wj3Y7lU7NdQhxtohCMMBznkdrHpPryZDanHmk=;
	b=X0YogH9RthpcmgTpWgKqG0ANhWRD6KpA1OUwIlhPSUyFhxbJt/P8Jr9jlW1diiDp
	Ql4ULzUp9T2Vyohs0y2LXJpxaigtbxgHwES1zkUUKiQUcLLgbP4DjC+OKDiXS1aHzhv
	cAqQpvcad1TAXh0FhH4P0z4Sdtx6lV7AI067eC8M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657447012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=plKhm0Wj3Y7lU7NdQhxtohCMMBznkdrHpPryZDanHmk=;
	b=VzNddulub3YX0mTVMWiuoozfIPv8Sl9wV/O4uWKE7Awl8+adeFLycVvU9KkcZXLk
	uLATfJeRxknRcXVOl6H1WyH9QXq+/TGTI9ajG8ZfkVLG01qYP0pQ9HcNQpHAR8UjS6k
	Edu3nOubHhZeJJ+plrtsPk33g5/Wu2KeM//xL3l4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e78a57c9-88e4cc6e-0d7f-4763-8480-223c558131c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f574ae3dbd6e6d1bc4e6db351148ec024f4930bf87b1a9d09f94495f3d7c734e
Date: Sun, 10 Jul 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657447012
