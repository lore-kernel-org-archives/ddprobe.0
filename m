Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C74028E6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 16:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654531619;
	h=To:Subject:From:Message-Id:Date;
	bh=Yyk8x9IMh8whgob7WTMf8f9/RYgj+WDcq9qmAwfv/oY=;
	b=BvnUn2lINmnj7QPWGW/32PP0LrTE+2r+Emz2/ECEHolPZAoGVzOZZONOTUr//2XP
	B05iWk4QPKLFJXISj36Gdhx/Ew1pW/VHkYhXr39Tu1GIfCWBLwk8BIcw0JOtCBD+MDV
	xCbZdZtd+K3TwlekDyPO94Wljp+xq/DUXNmT4m1M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654531619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Yyk8x9IMh8whgob7WTMf8f9/RYgj+WDcq9qmAwfv/oY=;
	b=cBZXr9t9GrY2jVxo7mtaFPj8fsOhU7ewj/++ASu3BpgH+S0NmeyhbtYW8ktSfrAv
	seqDhCjNFIwcJb1irDjm/ewDx3g1SlBmTEBbBRh/68Ofp1hawykkUAuIyhTBNVy32ob
	CUD7kU2VaVlgYajsLgYCZpzVZahKDhPtURpz0Uuo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018139c4f9b7-2d20acb7-a2c5-433c-83c0-bb49f61f59f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83de3e32c782fe14284b0bbbbe81b87ab1b9113bfcbcdb6be87133144c06bc8f
Date: Mon, 6 Jun 2022 16:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654531619
