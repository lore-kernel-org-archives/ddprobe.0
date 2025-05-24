Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C1B174EE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748113194; cv=none; b=qsUOZmBF8dWfaobfObS5JXGGC9nRPF5GNhEAjcf5wXAGfOq187cSqVf8nMwDM0Qsh9icCwcjyu6QrIg83RgBtyT6ftVZljDWOo688vtrRmAKPMt5rNhcTVAjbnzUbrvNKXXO5qWVLK5ZQ32IRG3zmlBbSdrRGIDB/6BFBIVCkyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748113194; c=relaxed/simple;
	bh=l8lvzcGPkq6ev9nUAM6lcqK+ZYBF2WYHWKqoPi5TR00=;
	h=To:Subject:From:Message-Id:Date; b=Qk7439S+v5VWHjNoaE6xce8DFvLSW1hLyiwXMy+/wkiWVIql6GyUxtgAD3sWq9JQcdeiSN3R2SgNA0M7Ad/lDAM/S7e4nXsd1tLOPpKVS0u3SqdgkwejDua9H3KelreDXN6KYiaEZQdO3iNl8QWT0mjiWzrWZufmArMB1yRhhPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+sBUcK9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+sBUcK9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78B2C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748113193;
	bh=l8lvzcGPkq6ev9nUAM6lcqK+ZYBF2WYHWKqoPi5TR00=;
	h=To:Subject:From:Date:From;
	b=V+sBUcK9oKKsW0TiB+BilLtuavwZaLXO1BI+VJUpm0A1kCn8fqimT7bJZKq+hNNVv
	 YXDDWb9szTehfSDmqPDSEXrBZVKj9Chfpwe+vWsVpt+Zl/71raFXOF3oeVofQWF0/9
	 xQYf0fnZ/rDOxshnWLM/MIb7NiwG5lF84BynyFpHLva0okDBZsDnib1jXoX4rHUScn
	 zIVTT+/S2/UMherWnnaT/w33M9xinm8g+y9gMlZcLPL/J2LVom0kt0ErIuub2oyBKt
	 HMGd3439PhY6U3O9BivJMQHUlz4AJj5GGSIb8TxXsv+Whyg8pjmBHLg8Ol4cXPfyK6
	 k1fZl2U0nGxgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F7DC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174811319357.27703.9783908649391945153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ce8c289588cdb63200fb87446bc39d90b37989f115bec833dc645a73114ee4
Date: Sat, 24 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748113193
