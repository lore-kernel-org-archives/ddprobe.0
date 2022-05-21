Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA357E
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 06:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653112919;
	h=To:Subject:From:Message-Id:Date;
	bh=3efLk580muGsC9DvuF59NO2kb5oAUTOddKUmAzvAP90=;
	b=liE5SeWlXdjHmIXPNfLx+tIGYhZs27clSZ/kqunZbtNPwTqosEEYowbJtc3MMqqe
	tHa+jJa5QKR1KADxzmt4lRprFc+jWFQqjujgVsHzMiarmJ+/HttL0+3tR8ulpo835MF
	KITI42qGHUr2Ozr6BLFIxf87RDnqJ64Qa/sWb4xA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653112919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3efLk580muGsC9DvuF59NO2kb5oAUTOddKUmAzvAP90=;
	b=BlXGnez9Lixk++GbqujDk0h/prBbsQxJ3rGiejkmCqEQiNBXvDUcErOe+9GUQmSD
	tInnCU4y2DJUX3Zml6UNULHkXhSOvsFxpA7bl9OVtHAdEdzrnndv0mhrITfgh+75sdM
	zh2x3DIw7piBm5ahYPK+sk0YWkOhh5odBZhuctXo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e53554cd-40207ef8-1350-42bf-a9a1-a4bd2e7300b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82ed46baf31da4673a430584e11d7aab487dbc52dc81655eaea5104da9d2adc9
Date: Sat, 21 May 2022 06:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653112919
