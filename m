Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE76B2F8EB6
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778200653; cv=none; b=hWRo0gOM3+XYCnBos/keCWBhOy3XyQ1f1aj+WXJO56BLTWgQp1VdrcducT9VlfeAl8BSc7ScxZL1IYmPJoSqd1mu9pfWUeccxG4gdF+2vLzH9asInmKX7sMRhw/mEngICNbdQdwU+98M3eFxGYTUi4/0OPFSgZ8jXCEU9MhyzZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778200653; c=relaxed/simple;
	bh=izbvI9RH7F1LsBdf6vSgr7oxtkgKQRLQeb0uaMGQuwA=;
	h=To:Subject:From:Message-Id:Date; b=T24JM/gIMlhbQP4DsgEm5XROMMVa7mhEG0BvW3yg/2+oaLkOmoZ5tJzRgrDT7yX+tpEqGD8dwKv4LFIWtgjWdy28FIEbUTStn7G/DIsegXdc1xBZTI6O7BpoXFxHewPIzVTd8kwkdDe1/ZIrF59+CG7r9BRRhrw4IdlpJcfeWdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXxlN+Q5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXxlN+Q5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED96C2BCB2
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778200653;
	bh=izbvI9RH7F1LsBdf6vSgr7oxtkgKQRLQeb0uaMGQuwA=;
	h=To:Subject:From:Date:From;
	b=sXxlN+Q5TM0ZH/MA0gpjniv8xCLXqbuCBL4ItHN4UDpLdLGsqEgHxTD6vH9c8+Hxm
	 fmEOasC6EgP94QFr3/lAeWdLGvisZj7AEskKgWR8a/UXdIRv3Y8BxHTGBNhZ2zdhA/
	 hJYgvhraMEpfdxlcUaGbfZ7fqYY7uiZt9uCHMHa0gdBnDkY4NBJHS+byxAbuGBIsnw
	 W+Nap7UIL5XTv0iR13yFVWaMGUPsIt92kX6+KOuKzms+M7gkgHAwfeuEvjbZvAA1P/
	 C8S0s5N6+fi6FvNXmEox+iprF+6MK3tPq0BOgqf8IHBwLtpHS5pKnbwdbFxMODX2Jh
	 8fHl67voA6ZKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC34CD343F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177820065369.23976.12872483475726525217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8ec838299f4f32e95f0786c678a95602cffea572d6525adad678ccee1f1a18b
Date: Fri, 08 May 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778200653
