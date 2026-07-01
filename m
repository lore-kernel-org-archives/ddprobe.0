Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8F5361DB1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 03:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782877114; cv=none; b=V+hgbu2rrK5kWsKDkpZBg4oBikSbCZNOKGLYtiT5U+HeqNAIvD+dhTixD2fWBRJkrstPoMtghNbH/QeKj109wbso3RStrW0EbfCCfyCilAtRP2UwdsfpqouB5snY9ZB1WVuayH5VRkLOnFabpXRkvAdPgUp3QWFLYu2jWaxG/W4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782877114; c=relaxed/simple;
	bh=U0kqhaTSf93/0NtL6agB5/YuDflwvnGEAuG80LbHiNI=;
	h=To:Subject:From:Message-Id:Date; b=AL2kqMDjHj3rMM1M2r88Td+0jhOCUuRtBUDeKDbQzaKWyT++vDE9Jo5x+JCHy44rUG3vlRZxKupjBh5kmZrWRxWEN5lzZ8mZo01SRLEqzgH7UN0fDu/+2O/9/3GfEzS114ZkyZ+hOhQZBmmLgBRYoJOULdL+GWrNlTP/URCPXZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbJF7ynI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbJF7ynI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6003C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782877113;
	bh=U0kqhaTSf93/0NtL6agB5/YuDflwvnGEAuG80LbHiNI=;
	h=To:Subject:From:Date:From;
	b=qbJF7ynI7oQ9NuaPTl19W1cOle/SM18/Wir+CB3hy4oUeTFfTe2+MLwpGIDTjA78T
	 JQ9sZYz97DAKx3RsmBZqrZ7TqfeBukOwYgqJDIkMDlGW7hHMnNfNcAd8L25qm53Hz1
	 Wd2wRwPc8NHG7M0qaks01BGHf/qravWbCi2hnvTzIdzAcXOTVcBVBKBB3sqZjpxjJ7
	 V6YXUsnbz//7FeSt5CPxMW2FTf18L2DaM+PS5C8LmHaHo4/VHIpLaniyc4J8LrW9vV
	 ZUzWBVFGH9vdxi6rP/fZM15PdZKHfKhAR9kZMvQfoImfAT3S9j8T5iV2pyCT/gnvtQ
	 VcQWm8Qb42i/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6ECC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178287711368.18122.4354605749317505498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c603526cb870e4c36d9f502e03284e680d0e689be0c235fcb01a8ba214716073
Date: Wed, 01 Jul 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782877113
