Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D486255E43
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 00:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778892634; cv=none; b=Dw8V7wd9EQbhG0eCfSaOBk6WQsHX+lhE6Mi5wfMvmcSu7ZWfPbYgsneh+d/FuY3MmHodNfXZlrPYkM8K/5WHQN4PIJid7Jm9b/BruDN/bsr2gmlugC3vJViLPn/QrTXkF4kMjon2UN+wVYSOANRpaNqt/dBj7Auib7EtqayL+EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778892634; c=relaxed/simple;
	bh=n1ZVLV/bORGU3TAyCTqRpths4Dcxc/0Rp8i+RXJEHC0=;
	h=To:Subject:From:Message-Id:Date; b=s6alrefjRVIbxC7+oZ89CyG+CWSrEs63I/zQhfxly6MqFP5gK+lSTuFOutxlgWhllX9MAfTGtlvcK+byk8UWgoKIwwa1Hw201CbOsY1oOOsaZvPGReRejhJam+4D85o4E6yo/zmm0sFypdwOs/aM/lSVLEWgpcFxl/7+FAXbE0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0oDuiGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0oDuiGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C1EC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778892633;
	bh=n1ZVLV/bORGU3TAyCTqRpths4Dcxc/0Rp8i+RXJEHC0=;
	h=To:Subject:From:Date:From;
	b=V0oDuiGP/2vGmrqXg2qCn8nKKRiTrmq8na8Fsv3lnydKHNz14uW7UwelPV9Q8s+Qa
	 k/fbl9+wUKmHM0MGyFMK02PpB6YGGjM/f5/FBhv9KA+IOw4RGu5SCIj59dQMMlwc1C
	 KMP6q3HYnbxr3kAMFvNwy+LGOPXTTiUGFIsR4vGlTev+RxaUsfmz0Q/8uoGwuy/39R
	 idE1pHM7VqIQzDAd9IWak7AFmk5u54c4UA1ZdMRaLEe5KVV900LVo4oBf2VM72gq9+
	 hTaWqmgS5D9PKB+Fwf0hSfTfk4eqaQk5Qm5POgjCkWuIpt9uc+VfvnTEnf88RseqQ6
	 eJ1xk4MRUnbUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A47CD343F
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177889263368.21986.16633911704972778474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12c09ace0d1c0270993c41848c22e500941be00f79853cdc8b6db230d2b068b2
Date: Sat, 16 May 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778892633
