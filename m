Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C2C64C
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 11:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658057212;
	h=To:Subject:From:Message-Id:Date;
	bh=9Rwoi2DWON+iZ29+QbCUX6kklaeU+98eR5bJcxW52Is=;
	b=lRQGrzYDg0vlJeCM4hf956FTDxFg2sqz7hLOfksNj6KC3wz4gpYneT5cH0Ah7WXp
	PN0jhv01IhQVxCqN35Xl3/ITtuQzbOoNXr8ERe3KX3sY8cAbTgY9d8BEd/uh5Kisnlk
	ov4jQF3YS07KcaIag6CPtkWOBYdnJnLDfiLgAOwo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658057212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9Rwoi2DWON+iZ29+QbCUX6kklaeU+98eR5bJcxW52Is=;
	b=hfImzzAR782yotMsyLqkOCVr6DP455toOSEDRklkTIidSzqlZ0G5OYVCFA1LenLh
	EFZvh9RfZPCxJjOoBHTZzJ/1zQpAap8vXTAMGZzSz600eHDOsQIggHXqnbtPJdui8vU
	2tuKogr9DGhGHLw+gh1QCOoAtWa5TkrTgR7CXGXk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820be94196-fad5edbd-42e2-4202-84d2-c10163802b43-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 44f4cfe0d4f7a3d5d25295e3ff5f41a516a81033690e99917da8567c17561d10
Date: Sun, 17 Jul 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658057212
