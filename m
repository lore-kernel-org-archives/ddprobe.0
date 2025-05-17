Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF7A17BA6
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747487994; cv=none; b=o45SFXfNnSgOfrqyFICL2JPHGTauACJ0xlAtw3DMrh2qzMUgZPiQJNP4ETE9ImFu6g1ZlcXyMZwbdINTty6P2hVCzxDW4nIWMFeJaNZjajM5m2qZYXuolZgL+bcXRlTkwizG2dtPWdjhV9892IfW7PwQVtOpwnOPI90MCQadkDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747487994; c=relaxed/simple;
	bh=P5MZKYCxMi2eqppum70EwpPVEEyUomCH8HX1Q9vH2bE=;
	h=To:Subject:From:Message-Id:Date; b=Y/6FKoEoCtnDj5w4DGCnduGb+oCfvW55rdKoPqTp5zieKxZqJwYslHkxeorJo7+aICq8hcTjZNECWuXKvjUB+1C/xiDS4U3iDrieu8gc3bjLUYYO3jpZ1WRRAMptLa5x9MpPmI8XQyVtfI6WzuRy/30eHTHDaQMxRBbqg3pD03w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUQ69//i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUQ69//i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18C2C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747487993;
	bh=P5MZKYCxMi2eqppum70EwpPVEEyUomCH8HX1Q9vH2bE=;
	h=To:Subject:From:Date:From;
	b=ZUQ69//iGY5pRpfdwf2KFepYDV+VcnVls6iP2rJmwL15QwlLJtFbj4VXFNE4RMTFu
	 Gu7JAc8d+SWjQeEO33GlZ5nDDbqKqpLz4DgHVQ5fWLxgj2xQSWvKRtdbReCH1cfhY6
	 dDph5QtJSPb0z+b5XKNB+n1LLgUg1FZgrJfpfc9haekRwoB/BcIw5FrS8u8n+ZspTh
	 R7U8O8ld0JhQcrfkKAOdRYZFa3yJl55adRiHRuekrpGGTdWgpZAIN6QRXn4jWXVsDi
	 U3EnShU4evRg3It1n+B75a+ev3rlsiFj1Ecc7mDWKJ+rMKVcxqhP74qBxz199ZTBn3
	 pKqd7vvdNUTqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDDAC3ABDA
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174748799357.6677.12906914373475610260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e5da11f33736f6c7ad3f252136483af82675116e7bb134b9b4079e311e1cf64
Date: Sat, 17 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747487993
