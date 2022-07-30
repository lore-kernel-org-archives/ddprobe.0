Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82E4729B0
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659188452;
	h=To:Subject:From:Message-Id:Date;
	bh=xAKVjfNqh4gW3M1MH5t3l0hLBfO2cSzQUhkgy9sYWy8=;
	b=QosB46mIZl0tPuaL8gnHYOiANJ7qWrceJ4KRcQSobbKIbPUkZoozC+jt7Ksu8tJb
	miBbsmXsB3uqePzul0VA8jYPoUoJGL3X9fDpfmwp5geb2MhUkazPCBZOl69GDC64IV7
	KtyX/nK1NeAh1XrPT47HcSUPX+rzIQDYQoz0EkYw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659188452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xAKVjfNqh4gW3M1MH5t3l0hLBfO2cSzQUhkgy9sYWy8=;
	b=eqtEoalwHw8hRn7YijX7sEjSLN5FJeV+xnsEZglPEOrFJSal8bjEep1F+3XE7Tbh
	RdwFgAicsauWMbOPtrgt9V/oci/LSF8cpGNXJnRaSQCCzljh2l6GO1PfOFzssNK7J/D
	VgxNNZgr2Vmi6IZnrD43lFPnTJAEb+yoS0Vxcan8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824f569d4f-9c7ec440-7a6e-4696-8c97-ce9051bb78fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9522bb26db0bfe522e4204076e3155fdcc4aa16642e84956f202e236292d0ea2
Date: Sat, 30 Jul 2022 13:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659188452
