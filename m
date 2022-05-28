Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9771FDF
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 04:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653711779;
	h=To:Subject:From:Message-Id:Date;
	bh=308C59WeetrJbhE5j6gKatVfvglR516L4HttkVtitFk=;
	b=LJJnyviRorCzdKY9lHPppZa0CrIxl/ZOest2CywkEgi+NSpD8vxWOGtjbSGkDsUT
	ctvURPGRfyee4DLVWaJ2FmEmkxxSSiiPrAL5ZKjf5E9LZo69rFU3SKL3RZ1Dz7RtEo8
	cclPQ504UpEBFnbU4JMZF9zrQdmMMNPpgzzPEBv4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653711779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=308C59WeetrJbhE5j6gKatVfvglR516L4HttkVtitFk=;
	b=XKDLDGY4qgnIonUICeLXnaEWASIzJdziYPg985Khq8RNVU4+VTg5wX+bP2AzNeye
	th2+uVE8W8UZ4Pkt+/m0+l/AE9lHyvr6AWmguPKBmmLL9xA77l+6RgM7ahopnx4o6RX
	DKZUAtWqf2PZn02FIfMqIJrE8aI5blxth7FOOEXw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018108e73618-6d6da479-54b9-4d38-8b38-cc8d80f13124-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea0591cb85d7716ad144480f7e5c563de3bf443c26a1b2cbd4e19593a6d392d2
Date: Sat, 28 May 2022 04:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653711779
