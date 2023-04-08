Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CEC01FA5
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 15:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5CADC433D2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 15:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680969065;
	bh=rv8BV1oZealPsLxSUtpjdHsoj4rhJmG46g0fhhpQlSo=;
	h=To:Subject:From:Date:From;
	b=aJSX5SzX+QvFwSypXp+JydBgAQYUDQVfu/dbF8bphTBk4MiEJ5KHT+UtcqRRrMLXk
	 EGlgt+YGkskd1dkC+aPe2S3o6rP3oTi6jRASrLL8t/cV/6V1Wr6KuHijWCg/KZdg6R
	 9A+q2ivKOFrIxIGQVKcydF28VAcKa8lMnUILOTP1m1x67NvXYiymBcNAqIDrom+6NJ
	 CAWEfLmSLiCXyc+8BPsn7DEPAQwks6BHwK9c/sd/w1yVEEtQJOwhb1HLqdAbVVI1zX
	 sIbBDXEfUiY6He4V3gBP+25ZzgC9obzkyj2VqapW752ao99mQvGVfQiHeAqvGzwDDa
	 Udph7MlVJHcMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCA0DC77B6E
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 15:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168096906582.31567.1248805071983661101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4394d9f5a41170a2e49ee680d8d96a8005522040aabbce4247911d6efd3ebcd
Date: Sat, 08 Apr 2023 15:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680969065
