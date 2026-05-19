Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD44372670
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 22:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779231034; cv=none; b=L37kCBK5tCNAP/k+gtf1BwjHScnORhQQEAZmXaXtu2iMXRxGeg6g7NWp/VqJaIR6VNKZp6B3d8S6WWFhRsybie3Wo+KhUo9XccNseG4tvRLv6sM9ZScoO5t2zcacgFtm32ywQOKBFqGe5y+ABhlsYARWBshhYb5/ACPbnmBxXxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779231034; c=relaxed/simple;
	bh=l+EeXrwI1Xc+UORfXSUDrTk6JKDsiJbzsk3v6Vdm0ts=;
	h=To:Subject:From:Message-Id:Date; b=oViwj2I6sp5Ccj9G1GIuaNbp1aBBWaXOgdvSM9a6XZhvuw+EO6Cgt3LmKG188ZTdnFRA4V3kFq0RxAM8W51bjx7YPdA0kVjyxoaD+57kUYV2XRric079u24m1+MbsyrYr2PUa1tpim2Y4r+44ofM+UCRpQuEUEo/2ovIlc/cauc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6a/1tU9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6a/1tU9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C345EC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779231033;
	bh=l+EeXrwI1Xc+UORfXSUDrTk6JKDsiJbzsk3v6Vdm0ts=;
	h=To:Subject:From:Date:From;
	b=K6a/1tU9mPuG7iSCb4otmA2oyItyEoEER44yIhKzBGCnpE6cWeLcMki0OXe7yW92U
	 BwqKQKeY1Ii2Q2hKwBAKgHO01Av487qxj8kkY4Zgsk5vQZ532MRBrdT9Yy9RI1D22+
	 NbbaHjDYrRh4iDwV9WIMARuBiEnehMUt+m105B0ze0Y5MQDTMZ1mXsSb29FDvT31jV
	 SiS9zQVRAHD1k9kcb7wpkGeFJoKKZlrSa5ZtQZvfu7QR+G88en6Aqn+wLsKFeyYQ/x
	 gdC8Kbjy0dQPxARZf1f5cw0aX7moD5te9o1kG8TRwVNdfwzaOM5kexGsXJHCnxrh3Z
	 uNbbFqtlHBsvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA91CCD4F54
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177923103368.21997.17232142847596594239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af8cbe0eaf0f964566e52c799f54107a4424f7034037d507fa1376c05d069802
Date: Tue, 19 May 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779231033
