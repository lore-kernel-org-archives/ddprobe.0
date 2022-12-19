Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D68F3EC2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 05:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A5DC433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 05:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671429087;
	bh=fIzM7PHC6v/PvC5WGJoE3zcupcpkTTgEBKt+ToBX3xY=;
	h=To:Subject:From:Date:From;
	b=TNmUm+weC0RwXGvoyWS0b29xLOCLfFPlhPLg8rYt3RuyX23XNBUuTA3QhpmIv39R6
	 4skrcAeILw2bZdLDaOl9qO4ERkTYZaSoZuCrswk8mprp9UBHX+wKXOPN6Ow9RN+bdj
	 Az7DJNYAEKQr/ij6KCeQLSf3H9jeRV/apc0EdebLbYE/00xyH/eJYEUfFLhOy2Fhsr
	 xJymJDktb7E/DTRPK4iS8sw7hu6SXO+exjO+Omte00mCs0rL7izn+O3IBB3L5bG8QY
	 y6WeYuNTkjv6MkP0SNtucTT/J0coAn5dY3imTv5X65uSF2gAS/v1/P39tTJXgWtmYY
	 xs/oa2JAbFo7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E123C4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 05:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167142908737.24636.13951071981391971765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27218909986ed4dca486c03a1a7586204a730971dd93ea508ff293e44dd447fd
Date: Mon, 19 Dec 2022 05:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671429087
