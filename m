Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B43871E4AF
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 13:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775741194; cv=none; b=YUNipiMtXkrWJo30nxon/A0tYj42REDpcy4qAQ/WYCjEJ4/s+vHiBMCu3zsfyhlbgWIWWA2T1qn1j/N+JBDQiIIQOlae4dU08PqtkNmL6txyyO1aPLLSSfzB0a/IRrVXhgnrx9Wol9f0w7i7c90aTV2lJ1M3IXgumWnpCJaMFQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775741194; c=relaxed/simple;
	bh=Lnn0Rkv6Z2GN+Qrni1MSVjJqUgpjYVRFrx3eDaPrSUo=;
	h=To:Subject:From:Message-Id:Date; b=GVjEOkaf74IsyHnszp6BjQfz5FLT1U709pS4Y2pUGmlewlKS/lp3r9XrA/4fgDeptCfuid1T0Be4I5CVFWWSwVPlp4A/vry4PAzjkBKd8zoY3hb3AFcDjhfcb1+RTKMSYEl0nr2gdN+JNRWwRY889XjCWewQ4XRy44UyPbDPJ+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fef/zxIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fef/zxIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 51152C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 13:26:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775741194;
	bh=Lnn0Rkv6Z2GN+Qrni1MSVjJqUgpjYVRFrx3eDaPrSUo=;
	h=To:Subject:From:Date:From;
	b=Fef/zxILnQHt2vEGvBe/mVD1hGSajB0L0T3N/YWvD3duTTESn5DgB/10N0WJYMgdN
	 IfIDjp8Z1fU51xIMXP1gcT5iIAj8nCNKP06ZXKxyl/36oyt6L9JdtAxIZm9JZx2O5M
	 8N4OTl1PUhQEh1qbLIIPl0v2ZTJMIA732gDBi1xCsKOus/fMND9/77bOmsmm8oBSa0
	 hgrbp0vDCxic1q8lmjdf2jwuXyEmOoWOlVhS0EVK3JWL4JwjIJJso7MfPbu5v8YYFG
	 FLqWaq3V2qMp/fLvMbHiZ3SEEzJQsEXsHabBPXsjipMpXzxZOnPH41JCU3prNsFHdm
	 ERlsjCxfGOddQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 167A4EA3C5E
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 13:26:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177574119394.7961.5209760243477190551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc738c3bdc71e6feb2875b167268578291a30ea717007bd8dcb951fcc01e83e9
Date: Thu, 09 Apr 2026 13:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775741193
