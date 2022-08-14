Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5D99323D
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 23:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660520453;
	h=To:Subject:From:Message-Id:Date;
	bh=wpejvTd+xu4ZIuPn0htvAiFtuRjxcfPjUFB7HrnFzWE=;
	b=RueBDgY7U8O9xpW7dzcrlPmSTLDKLtdvyNH1tBMelk5ILYFzuFkl2Cx8UxoZ/Ql2
	yD6cheTtSUOdcIxszP+vlFCB/56SGUnTUgYCCvfOxUuOz5swYgYVD1IfwMHKuSQOD3w
	jltgSajGh4kUgC4knkwjOBbnB1k88oZ4YJBuvbCY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660520453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wpejvTd+xu4ZIuPn0htvAiFtuRjxcfPjUFB7HrnFzWE=;
	b=jqSTj9jhiDuvtnEHDKyEyfTq4+GzD7uPlLwEhoC4qRjWS0t8ePmMx40+vHgIYo1R
	XAEcyEnPp4a5TJIxn+/tr/fNLeynTVfdqPdWR14NblZ1c/0YyO1G1JZBX04qwNGe/0o
	MCmqQM0RNrJbe05VgqzDGtRZQStG31Tkb8yrvvsI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829ebb51e6-c494c4e2-a29a-4baf-bc01-c32679d4d898-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d392cefb2a227dc975766ebdc1763c086a5ed3a171514c5a380cb8c1d511b4c5
Date: Sun, 14 Aug 2022 23:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660520452
