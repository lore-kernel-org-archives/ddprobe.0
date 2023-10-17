Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1A29CA5B
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 19:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tE4sbnII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3B10C433C7
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 19:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697572628;
	bh=f+/Hj8HhaFQQFZWmpAG8LTwd7GkOdV/yu/ghX39dNGg=;
	h=To:Subject:From:Date:From;
	b=tE4sbnII8ZOTqMIXJnVR5jKXM1UhMfh7pqCEieJyP/uSrQxlkxR+Lv4AvUkk3Xq4w
	 YM5sK9EEjYQbXGpWKC1SEFEB+Ve5wX18XzSLt48Fno+ZY1M9B3QY9iJvAFnArp8wm9
	 /YdkmXtlgSKRTgKVn7XqnbJaP7o/3Uxe9GyffMiB27g/avz9YnKG7YMo2+0wsi3kYu
	 AYbZdemrUPbCffdENrMltGHwov7JrFFS+QlawhnzGXqjobxKR0Ez+GdfZK69Ti8Vtj
	 T9gM0CJycdO9eMFKgpCZw3Fkge1eUarKnS8r0gGkR8oQIL+q8DGDvw6HS1pBzbRgiL
	 hutPwRS3DrBGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A66B7CDB482
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 19:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169757262867.25859.3319968339840545937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21d54d507ff2400ed94b35aefd93364741ebfa5346792912beccd649a2186de7
Date: Tue, 17 Oct 2023 19:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697572628
