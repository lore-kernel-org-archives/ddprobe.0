Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69F761371
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 08:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4C09C433C8
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 08:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693039448;
	bh=gfKlR/adEp8fRwBY8fDBGlmFmzISHfgmhnsLhR9ZuDU=;
	h=To:Subject:From:Date:From;
	b=Ruo8PDGmg5SwgttmLm1o4SCtGMbgksQufLa7/aVKVYwrflCbPbZ5/GuA3+2Fn24i4
	 bX/R29ioYV1u08+1MMXRAUYPsWjyF6bH2mPJb/RvA1425ECJPeS6kWQKShIV+aSVDH
	 I/JtnG8j91u+bU3EQ3+CJHC9rMwRb49Frv1xYs6d4k4dbBWuVmvJhOweXknDc0Wvbc
	 rengnMDDkGQHinAJW4BfPGxrzyXMkhdUTBVCIyAtp5/r4Rdr3E9nvWc93htuaq2c4f
	 8gUq1m+V7FhZONkVuz+8eNGkR/4fTXjODGC8LenVjD4NhqZDU+ijLEFDJ60rhnOfIx
	 ScsENlkkbfYuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2303C83F16
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 08:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169303944869.13913.9868008534568689735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08794b7e47fa6048e6046af10a2e1e7d95ef76a7ea6f4c7b11ed71d4e290c19
Date: Sat, 26 Aug 2023 08:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693039448
