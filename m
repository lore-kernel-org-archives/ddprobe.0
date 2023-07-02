Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B28C17C9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 16:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C04C433C8
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 16:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688314448;
	bh=jYIRIyZu7+O+1gvl+q31FQak3C9z5hPF/a6co9cjlCY=;
	h=To:Subject:From:Date:From;
	b=D/k/eNfT28urK2YakESKe0i7OSuyos6mUyhUEES9o/QYWeClZmUeF1OCpfG8VzDfD
	 W13o4fzfZMoq0BFR3ZhUCTr7SbeN4NujwbRHhIJH57QcrwyWhyclmvRGiaILDnGZVc
	 4KaUbeiUiDyHvvRrCZzW575L0pLp9agfuRQxUzjbMbO60Uuc6et4RDU6MTVN1RjKxN
	 Q/lwWm0f5EFfygsaUVzdFAe4brKTH4ZWxqGW5yAT8XKGnQi9g2Qe5LdxYp9pd6H6tE
	 YTA/mzOIPWiHI5ko0zJR3mpOqebWjbMkMnymxV4IiGKzoTsUsK1LzCCls9NzpHwzf+
	 ZBuT/XyyMfDfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26BAEB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 16:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168831444877.1969.17884808602479332130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d89d2dfb99385e0db7831005ea28923f75ef3f0c1bc9b1b41106abaf8cf3f8
Date: Sun, 02 Jul 2023 16:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688314448
