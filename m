Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB957B
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 15:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649692678;
	h=To:Subject:From:Message-Id:Date;
	bh=bACgW6uhreg1RpM26kcVK9OHg30hb7X0ud9/31RfwiI=;
	b=W5kQbdEJ1CMpZa3/kpcD9gBxdEV06LLZ4qLKpi0SSAOTplm1HNugv2P+3VFC2Pjw
	GC3paFBIE9NZxzz8GwMgC1TQiVLV/R1V/AgEADKolyYZqfzRNJu9kQv37TVV9JkZSVo
	5kQZ+Qr3Crj598U0YcOvcX3NK4Am6FbS8aXfUpgc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649692678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bACgW6uhreg1RpM26kcVK9OHg30hb7X0ud9/31RfwiI=;
	b=SZjrqPxtBKQwpLVmsW2YeN4Cm2BlPxrKLFYdp1+FbIZij/EXyRbsi8Ugw48S1rkg
	EyTXRWXdIqhtJ0jBQlimBbg4IMqGESdwG7O8pv8htWPVYrkguW80Ss95Hq/gbGFMuAC
	yXszBN2TXaeqKD/J9t/yubcsqtBWz4m93tUxCuqM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018019589859-bd8b931f-cfa3-40c4-a021-84688535abe2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7cae8d385e0890fc91b01b17db87c2c2b820c33a53ad9aa3fd3ae79e3d8d0598
Date: Mon, 11 Apr 2022 15:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649692678
