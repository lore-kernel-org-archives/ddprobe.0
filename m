Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA15C638
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660299053;
	h=To:Subject:From:Message-Id:Date;
	bh=5jSCBhRXftUIu1rVKudLiUVh1egK38VSolzxvFI0GqY=;
	b=ScQ6HAO62XfSxfpwx/7El4PJ59BV3riDbu05bDleHFJ73xUT1PKK0PKvHZQ8kda6
	PYxfrFTl7HAqzwbQ07eRksn7OPZPcVWpstiB4W1S4iAuGMm7y7dmEAJgP/b4VohDj/I
	LGyVTtB8Tzeca6e2ipo5xcvzJaK5muMIngIODfvg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660299053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5jSCBhRXftUIu1rVKudLiUVh1egK38VSolzxvFI0GqY=;
	b=iyMdnVtpTrc0fmbJ1uwEg1v3k0af+ORXZWquD1xIWcCBbm2EnSQAuq0w9tlrhx46
	brIt6gNd5oADJ0mbIBSqi23GKhdw1latYhgPkXHb65bm1dcXNt9ZzXzE65Ouznyc3EO
	sjQ0p8n2oYcQA7iIJ66SFU0IUZMZzVzX7qx9KWDI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829189060d-13f07ad2-f171-45db-a33c-73a18e23265f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e31e9fe2b05ee319c1129512028436ffdaff3b6d78c01a651b8cc59cff6b968
Date: Fri, 12 Aug 2022 10:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660299052
