Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA9918F4E
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712719097; cv=none; b=YS4LhtkBsLX1e7/TmsNjZUQEsw+v+4dmmlzZYUnyIGhNCJsjdTHzaxSybGWjbPjPtmwmJ1NoCOD8Q9waOHHicO7fEmknvSnxuMJJ4xKYo5ZAFUNBlpDlJt/hvLELrtRxQ2MzibYjCQqt5E4yZXZ/z0MfFfx1g5RX5PAxfeiSQVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712719097; c=relaxed/simple;
	bh=EyusvsWQYvhbHRnv8UQEvEMMlCgnF/ufEl61N6o5Obo=;
	h=To:Subject:From:Message-Id:Date; b=TAcJmacdpuTynKYTz+3TW2aYN8+pnuKcRo33P9pcD/5QdS5T9Wz2i1BAlVnfB4dyMvzlc1k7BQLDclUJ9Qf+iZ3tgIBmAVYRIhJbDh2HgQ0yYkoQX0tsjg4mV8pGwZZoQ3JcftGw7x+VDgmoScNcM4MOG5EQFQ5UVcrTlLMbTwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Muwgn6FV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Muwgn6FV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8110DC43390
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712719096;
	bh=EyusvsWQYvhbHRnv8UQEvEMMlCgnF/ufEl61N6o5Obo=;
	h=To:Subject:From:Date:From;
	b=Muwgn6FV3Uzz7G4QQpPO058geBoq/PbhXZM8yj9w5MDTyWz0l2tRhlfrgFw1swqho
	 8qAEBkXijf1yuhQXqU1qSnK9hxRDysHpaXF5bQ5aq7euSMHzzpre8vBfc+XNAynjnl
	 IItCvSr7Yu4qWMFVG6efGyQZBrkKsNYhV5Q2bVCINMAORDp/bYJ0oDYH7Urxg3rIx3
	 98rEu7XHJfUr1+CGLSzf3PIDc94l8sQVOcoyzjiG4ZLrid9yAGEou2K5+UWP7Vswg5
	 yDtEulcMiWiLNV1CQTCSiuzGFv7qipYOFtnlKxe1r0TnJVj1IEpCAdv3luUNdqT44G
	 RBYYQdnLbH2Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69833C67861
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171271909642.1167.11390055163264997058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae44da3cf74978c61fb8424f610c3e41119632b0b6885de6333d0dfeea6926ca
Date: Wed, 10 Apr 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712719096
