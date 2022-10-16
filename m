Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9183ED8
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C165C433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665926453;
	bh=9ut4m4PMz9OE6dJ1f2L1RavqV7YVhu+t4HDPeJpdKE4=;
	h=To:Subject:From:Date:From;
	b=q3VloPUMhVKdWxaR/mk77XkTGYieTe9o2ghUBYpCJScSv+/sdqmzqfoTVdIMsWZdV
	 /Yf7HChUub42MhHHeKFNNrtA+aDGeowlK+L4M/YjVcwf0xaNUPrMV2shH+0cLZ01jS
	 tgYKhMSOJz8IDoDHtJl3Lb4PFpOtEJM6Ca8hM88534G/niMa486wJ9Sa6m+U6wlEuN
	 Pxh0TpVBoe+hb2Bdn/sgeZsHDUwyKvOKpyV8pR16Qa6lNLeTgUhBgF3iNNH1V8gXNp
	 OIrsrkf7PHUkuXxUfmU9oCa9M48lQzmv/uvVks/rsl8pxvCjw1Gv3+HYRYFGSeenKV
	 XeT4ZzXo37+5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52A1EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166592645333.32000.12968848835433501540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09cc0a08732458062c00fe31f30ea7d4b0c8a3b0b1cf02d5f6ab565709733f87
Date: Sun, 16 Oct 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665926453
