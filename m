Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06CA97A
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 13:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650375058;
	h=To:Subject:From:Message-Id:Date;
	bh=bHYDn11GmiKF3wArKK6Y0sO5GGOjS9C0OFNCimHoCzU=;
	b=CJAyUmvVPtcACjTXX1OW5vATzBP7WaNfN4Iu3SKYSyvS/IOsjPtshITnysFPDHkf
	NSbvg9VEEIqMQUKI3x+8BEQUQHZT2V5NksJP/PH2MmzdjTgRZjnIS2Hg4+y2H9mcJ/B
	DFYpXLutcytKX29plRmIXTWhQ0of14Fw3wwcr06I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650375058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bHYDn11GmiKF3wArKK6Y0sO5GGOjS9C0OFNCimHoCzU=;
	b=Axg1z44xTu3wSnqqzjAX4uoQj22rZ6nzJC1qtBgp9jvi/xIfQ0Sv0hOmr4vWuSVA
	ZJg7cmfRWPwyQXuQyYpRdfT5ezktzdl0Y9Wlh9Ms4pOZFUutOSlAgxtF62vxKecjb7j
	/kh+c3AcfiONPj0AWkDWAOlt83fY+KmXNtJPhX0g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804204e3a7-32d79787-673d-49f6-a0bb-2cd2f1a4ed7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf7a81a154f97f219bb2a52f04c112b32f2a668bb6133c877c881c3c63ec0658
Date: Tue, 19 Apr 2022 13:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650375058
