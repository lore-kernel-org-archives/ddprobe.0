Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C36288535
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773463494; cv=none; b=HrXAdWzA9G51adAFDtwcBydlKTYQ4akRpitKwR0J/eR3Io0jk+LZ6KW35b1CPk0QFwmoCgMTcWPE9A4kn4IPbWPLtTBL0QvIiPKWtJ0QXZ5WrTci9dQHvjKb4geIWW/a8EPgYlo+2IBquEzhQuFQSOI0vT3ypNhVkXqN+o8ai44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773463494; c=relaxed/simple;
	bh=bW8+XoScYcRLmk/mgV4CISaKuPTTx0JzjJ3v4MSmgfk=;
	h=To:Subject:From:Message-Id:Date; b=TaTJvOxwzVax52hTbsB2exD5trCgup+Rb/u/kf4KWx9iKs8/PQsU1t6dAxntlL0HYjHTQwCa68HQ0FgJxAQ2+25/a/cPU91J5e92I5YHkYs3I1/83OSNCNZbq28AJ/wwABuckoRkbp11oQvXcpguPzRZI20+9sk27QVzlyCMRZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDLAS/vZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDLAS/vZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC28C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773463493;
	bh=bW8+XoScYcRLmk/mgV4CISaKuPTTx0JzjJ3v4MSmgfk=;
	h=To:Subject:From:Date:From;
	b=hDLAS/vZHuq6IhSIzrXZPlrzPVmMZFb8oU5kX8P2ngxwhGBOIzDPLdDQZlElgY30E
	 EW16SAMR4a3iDRuob4qk38mWxIKxL4EpCMaECk2o+l5eZQhTVQOONOBQyaNrMliE2d
	 ktmI68m5VcW5MReIRGWLwtiJEabCk7GJun8NxNgRhxBdphxFp/ybd+oOHZoubFA0pb
	 8W+3/C/YT2YW5PVz6XXDhv/0Ld32Pwhe6hY9Es5lJMrE58xO0Tws+NPkQik1UvrL48
	 olD+77fDXEwwP8EM5M7Ws+JY100k+Mmzn1WxEonRrzD+C+TPlqVwbwmI8p3PkO33MK
	 DNONmF3VAF3CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDC0107BCF1
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177346349357.4940.5580832311499973285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18cf8af95bae1dd334fe88e961cf21087383582ff619afce0f975bc5fe707671
Date: Sat, 14 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773463493
