Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D669B6FB4
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80AB4C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671479487;
	bh=CYfauur+STMdmz4DOX/XSe+BECo4LFJGvgMGpTe5oK4=;
	h=To:Subject:From:Date:From;
	b=raSqTRPNoLXD3q/GUlUG36UMguL2ZpRIodbPq5JI5D4S92BI2Nuf/IO31ohi/xfE2
	 RfRlEatfznQPXVWg0FhzkmAVPB4wYyR/VC0XlyYX/BUGNCCqecJRlEQuuECl16JcR+
	 CDoUoCritYq0N4nfzqUbVmR1qhC2YSrhZgh7p5rCNe1m3MoLosI7p26M+Olxd/70g9
	 gWXOKQ/YFArVPrVySCA1eXzB+w0HEoj9tq5h+UId9ZHJzJ09V8RgYswN73YcFZrl+e
	 IHitWmpgK0DrOxGWubNV2hKzMSGFVGzGpzoPKT33f0DD1ndkeGO1yFw+3CL+zBqnZt
	 vP4bMobIiIogw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6413CC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167147948738.26041.4753185220786333085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec04bc7252e7eccc38dc28a4a1f9f3974d2786e3b6baf15ece2a1181a9f27aac
Date: Mon, 19 Dec 2022 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671479487
