Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F71A1385
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 19:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650397858;
	h=To:Subject:From:Message-Id:Date;
	bh=rT+bDJGPWASLCbJIOMwo6SgGtH/5priD6POBaaoY1iY=;
	b=hv1BTPUTLdO8rDDlA58R/uRxJLvA63Lg9e2MXytAvnqzdgOgwhiAioHT3Ap88diA
	SE/IE1zQ3708XSjW1RkD0KqbaO9uSkly3INTDTpbTZSXCjpXCCm6czLMyj8VBgx1GMs
	TG71/W+eKRhtBTWH4AuWfUUTDrfpGpwlQxypa1u8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650397858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rT+bDJGPWASLCbJIOMwo6SgGtH/5priD6POBaaoY1iY=;
	b=jch4hry2/MgCteJIBU8gtyzJQdlRiw0FkeoW8/pB4xfSgL6wNTIvXXUZU96nfSDv
	BOE9msqvW7+h2aZaevoSJFhWlp5XRmNx/MY6uwm2DVhVXJx3r9X0ZLZMBYo9VND68CI
	/FkI5yFIqCUmgYBSy8oEtKITy4c9Wa84zpC7FQ9c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804360ca0d-bc5fed24-d460-44b7-b00e-e0f447855a8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0ac75d8906db59d4eba7917d344c3222870460e0891bd6c998bc9f6187c6a2d
Date: Tue, 19 Apr 2022 19:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650397858
