Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24426BA3D
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 04:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763613714; cv=none; b=hCiyolGzafBWjdlCyBrZS6HWfIKpsASubCoy8S5nnNfqNgIyL3Fe50aOMvTaKt7gw3/xkLPSltVTDCe+1RbZnWGL/Zw6CGeIw/5NjqsN8DMKWiQOQ5n77vXzzV5gN5dYsKrw/yV3lC0032osBfST9zP8ch+N/3X9zWQq/ZOZBmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763613714; c=relaxed/simple;
	bh=fsKdtyvuS+s+DeV2+hU9I8KqGQ5PQNWH/+nG6wjcmFo=;
	h=To:Subject:From:Message-Id:Date; b=pzs8PNWmfFsx5VN0vWxowb+GXEhBEiNHcq+/krTyNyF5z4Y43M5v28qF8ie8IafMA4OlONYsUrYKTZAslxDlla/lKwhuEkLCmWY/MKLcH+QNJl8GByxShEvMyRCWAMc0Kqla2Odm5g0fQqj6iPgo4bLR61zY43NaFRl3n90uSl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpVGNlPa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpVGNlPa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8979C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 04:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763613713;
	bh=fsKdtyvuS+s+DeV2+hU9I8KqGQ5PQNWH/+nG6wjcmFo=;
	h=To:Subject:From:Date:From;
	b=LpVGNlPapdj5CzK/ZMLr9KSeJBoD08tQCcHUEclviFwWlGdYUZlaSal77l4Y+3IpC
	 /TL2Xn8Zf4+I1Atx+TKZezZTIjKHcmexr/kkD5vOpscsu/IqbZmrl4xV+xSxnvNbYE
	 Q2stADswbTjcyq+Z4LsKJmWnetVorYt7DoQ08VrFSAiaOZ+zeGKqWCTbGs46P2ZsOb
	 1nLDHanupq4xYiD6Jw7fT6SoRQSDCuTNfg6yUmbdgjBVkyyOaqyWqyrxCJg/CwEHJq
	 5HuSIqywD3UH7nDyOMq4R/Nu//s8wPdiTppvvVaWvSzBE93Wq3CE7v4gkbwnGZGFVP
	 38azybuIJ2ZFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9614ACD4F3E
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 04:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176361371359.27838.8949098054751769070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db3b531c8198b03d6492d12148adbd5ed6679616e3e89364e1aa3f1954d2b11f
Date: Thu, 20 Nov 2025 04:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763613713
