Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EE07E
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 02:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E871EC433D2
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 02:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683252965;
	bh=wMpJ0bT7W2K2NY9Ow1P0cfACBGLjvRDA6WpuiIO+ClE=;
	h=To:Subject:From:Date:From;
	b=rorOXTlKo1n57KuWd6SisO5EDzXGnYx0QYXUNxpLsH1ve6kDmhWy06bnXpRiQ8pHr
	 84EmSdsH+LlnAiJ53e2tbfga8LKcEswO+WG+d2YuQR3WPLTuVYt9Hlzk7s74bymXGu
	 mfrpQOLa0ccUZJ5k/Fub5NMH0ta62yv/56ZpeC4u/7YBY73jarNKlYRox62rhWjvPC
	 rj5C5GBXKnNRh2NnyovgmNGlUGyPQmr3YFO6kmSgd2YWsKetY+S5uefC6QTQ2NodF4
	 YGovSXnUhcamRmS9acoaKBoKIpthNXnSWtUJO1YZWnaJ9xszXK2b82ITrHNSy4kJJt
	 a9sa92c6p/h/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D2FC77B7C
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 02:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168325296577.27930.8670371742886104845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f48b93f34dd1f464dcc1e646529a991654d011d9aec8750b2e357c678f2e5e78
Date: Fri, 05 May 2023 02:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683252965
