Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7737F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2DCCC433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670979687;
	bh=T0zYjezIKaf5tVguAwzEh24wp6hrc4gFK7k/02FRBhY=;
	h=To:Subject:From:Date:From;
	b=HLFmz5jnQ0S14BgVtADrgNEp3CoAQQ8F/luvnMTAy8yIljpv4Km56UMJ8Repz620S
	 r0A2zYhm4q0OKLiNMPu+HppDgmogu/nqBArhdQGmajI0jWhBROpM8c4ecIiSP/d2eF
	 gozxxszkVNwkqS8NJi/3y+zbMtwrevKgfA7Ea6uzHypAyaOtVeZFN13xjbQRTL/YpC
	 4n4YeAdFFhc8SHRVKG4NhoM5SAvFfKznlREN+XFVCxsJ/9Cr98CtaiNJoFLld1OpOk
	 ja/2Lwh2dlsw6K+XwzP7SlKSSHjZTyHuo/bnFDZXuM0R8yYQU//sDi2TJ4upU2N6dC
	 6qpjR6XPZwzMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921A6C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167097968758.5811.12121943122706031186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d164b79488c1bb90d925196f45b6b9fe00a6d7a09a9f079cb02fc5fd385ec582
Date: Wed, 14 Dec 2022 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670979687
