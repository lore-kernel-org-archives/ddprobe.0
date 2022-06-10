Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9859362
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 10:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654857119;
	h=To:Subject:From:Message-Id:Date;
	bh=SBOxLM80UXfuRAm8XzrzgoulpHdWq4OTAgQ9qQwIPUo=;
	b=fNTB+buzUlplt2HnWkIsTm7PRg1ZEuO0TTICG5J8VJf9d83VpWUONha0V0k6xL0S
	YkdAMEJJymhLCJexlvz6JalZ8lQ7ISuJMLps5KqlO/h1lY+G2x7unONu53p2Jeg45QZ
	+fblYJwMHPYeGghS41sNfBrkmpaexrFxlEjEDUfU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654857119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SBOxLM80UXfuRAm8XzrzgoulpHdWq4OTAgQ9qQwIPUo=;
	b=eVCcR6MtE4jz5IPqhm5VvZf4HotBytULpi8dZjf8L995AVpLPoluXIdb2JdlYX0x
	mWO2pCIFL2oP2V0IBarx7NR5HWlQ7fYixHUXJHY4N4kpYz2bGG0+ExVpFSPbFrGPlua
	QA4fudrG6aEG3VT9E/Vv/oDiHS0Pt5OmbSng7w7c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814d2bb621-25ed8cca-cbd6-47b2-9997-e411d1beb3ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0d3a590342d58a2d371c673559734e7faaccfcac18b18f784f8316f759c802f
Date: Fri, 10 Jun 2022 10:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654857119
