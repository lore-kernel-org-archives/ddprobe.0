Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB287E
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 17:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8501CC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 17:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671384687;
	bh=3VT6lrONVnKTsdAXOurdPpTkzQTjp6gUFhhx46eSGRw=;
	h=To:Subject:From:Date:From;
	b=nXLDZjADoeyA6NB3uFG8K/u2cchnnZlXmokbbaPF7fH/1UaRz3bltmHjhYhBZyFls
	 H2ztWUbcfn+6gpP8c5c6wT2G2owcxNCF0sHe6hUi+pwZRpZKSt3BwDE0BJeNiy8Uyh
	 uDseK8F6hJWTTG8dsO0BvsXyAa7Zl/v1441ffbaNpPgBxHF7TPJU4j3EBGxH2zgEpN
	 fRrtAM5T1tLTuwkMjKITqHrs+giRkjGkAsbX9dKjJ/AJz6nAgz7/2KzGDEavSqdheZ
	 DPy5THihQHXoWcmj9817ZzO1ig2dLtR+N4OFuZruWcCGF1FQ846BjA7KYvOFOGTpb9
	 UQzK8x0t0NjMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69451C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 17:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167138468742.20825.5967195621437564596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4d1193c5e5b1b2d09180fd8aad7669b9c396b4ca5c8e9bcbecb18d28d614ac5
Date: Sun, 18 Dec 2022 17:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671384687
