Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E7717F0
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7B3C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 22:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672697487;
	bh=eoqcruTA+r6b3QwBu5fiAyipWXTjJ/9jdhN+KLcOfcA=;
	h=To:Subject:From:Date:From;
	b=au/20sLLQ9NGSTALbqKK6fOpmyY5xqvgU//doYXZ1nONPPdTuVzK8XG8vZQu3kpN+
	 4KYUkXzDt3CC2rAy0aygOuwhlMlnbJeVMkIs56p7PIxA2jxQYH8k+gWeZAopSMnT7r
	 uZ+OvSsWcYevGDeQ8fJ+gkefqDnHLKZ9F2BczJY/hTb8ElSjpeRXjlIIJriOIKp7OT
	 Y937AlgozJ+CWFwyH3EPJzRtCKVXcZ8TQ8aYcjc3AbC34JE3yqAk6SM3pBevF7OZPn
	 rLrbs5QVEDOiDVM/pX1AJq8XZa5Yb82y6W42WscrS6/KfOY9hMj1saQTdpBt3yDR9v
	 K4Fr3LKdOOLFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C096C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 22:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167269748755.24309.3501719955488485086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c336605f62c15ef09be2f73405ec00574ded75d28d9a0a9a360ffbef7cc20068
Date: Mon, 02 Jan 2023 22:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672697487
