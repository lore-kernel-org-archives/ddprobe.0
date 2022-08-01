Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D617F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659396052;
	h=To:Subject:From:Message-Id:Date;
	bh=Z8aEqf379CZcl45YTkoho2dTrNsm6KpbZLowm3I8rP8=;
	b=Q7koXNcx4QrsUyFb7lx79FypPiIXSh4L6oRoQ3QI/8uA57+7zfnptal3osBvFskE
	BtfivbEsB3gXPEU7XMQ72+A44nZilp8ftrWA0TciweGTIGC7/xDXbcgaUs973pc/4Xp
	YLF+v6t/vPhfwK/ynRNgN8OTRJxWIFbnWZOQWAFs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659396052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z8aEqf379CZcl45YTkoho2dTrNsm6KpbZLowm3I8rP8=;
	b=eeUBls1RderaDW0QLkT4s2sD24QVrJ/khuzRXKTEGa8hRFMrjkwahmVyO648U8GH
	jR7TM2sZRxXxkkgy2y6iy7g4RcblhxfiAmOOfpRbRzydKSD2LdHqemuFcnixnVzNlYO
	3iXCDngn/FhBST3fIlQBDQLT/OwNsEkUS5M4l62s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825bb65654-1986a179-6e6f-461d-904e-de105aed22c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: facde4376fb163e8d06feaee9c6b981c6d0b96680fb560348f3619792ab23490
Date: Mon, 1 Aug 2022 23:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659396052
