Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185B020FC
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 07:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653981539;
	h=To:Subject:From:Message-Id:Date;
	bh=PA6kFZGJadP3tCq3rgY4czgrMLDylnob37EPUY7kz3g=;
	b=BWJZl6iuk+/Wdn/1m1qOgwTx7ALXT6Twb2QmGIn0HLiHZhfZYRA/iqCWkJgOk149
	aAObpnHnhaQ5mr7/yMaJIo36Uvp3sW3L6cCwcDDv0bNhjgu+G/qtPzEgHz1z0W3w8UB
	lThGU/VP9TM7oJF0l+cp37ckgMwH540bDM0tlE20=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653981539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PA6kFZGJadP3tCq3rgY4czgrMLDylnob37EPUY7kz3g=;
	b=IBjBwRAT0+eTRD0hmKsZhqyWP0I9Rxbt0+ueMo9Ub1zTBIduF0fH/KNjCVNw/8Uy
	S+SaQYobQngP/AAzQ4IPiqgG4B6iwIzILECp7CRNmqVl8p4Biu52xwx1inEpOfz9lcF
	RtbN5fVkowobgVDCLQJnpS9a7NFnJeM/N7iZvE98=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018118fb6c15-906d0ebb-ddae-4cf5-9992-0b69e01d8adb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e69f31576f3136bd5b2879d3eb696592b3562279eec82cd0e792e5ea12d34d5c
Date: Tue, 31 May 2022 07:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653981539
