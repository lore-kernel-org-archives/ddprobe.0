Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB9A1110
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661332252;
	h=To:Subject:From:Message-Id:Date;
	bh=4SxoDVWf4IDbs+O0T+2Ai2X4vwVHIadvQfH2YigRlJA=;
	b=W19LM1MpSSc5U90ctZU/6Y2zF2RPNOfJD73KToWiyCjMtgECPZJDfLNZNjOkT/Hq
	iJhHqSuIIt1j2+zpemtt8MsDi8/jYKsU4ibSnX2LQVfNAHrfyRIlQHEqo1nHXToqqtn
	xiiOet8euE85VHL6CwH+mvjQ8yNhIWoe17z9iDtI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661332252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4SxoDVWf4IDbs+O0T+2Ai2X4vwVHIadvQfH2YigRlJA=;
	b=NblVJZ/gWrkMxiOgTc6Uq/zFCEDmW4Ow8XOZaRmT0UOuKmA3QKxgZenbOT8/hrAM
	0sasmlxumf2hUBC3/ZR5cQSOfvjG3rPVlID0V25uvKTy8+Ne66X8tDcoBtMAi3b5I4J
	yeYTBl/DZy+L7e498J/o1q5FexlaVZ/VHzHiMhKk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cf1e67a6-1a570d41-3172-4205-928b-947c6f86faca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04e84feb852d74563c965a099403895f85be1600d0262b78106f8f0b6da90f3b
Date: Wed, 24 Aug 2022 09:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661332252
