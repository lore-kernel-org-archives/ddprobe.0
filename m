Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56083146019
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 13:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717507523; cv=none; b=SHzgFSXo2UxqR3JgpkqM8Tnbe/Ft8nrnQOV/V+CRzRVtkr+cikqxUemzT7PjygV9l6JNXXG/KyKtL+nwjyT/zvQ8qn6RuV30wuAJYR0WxPITr4MsG9c/egLWkAM8oxMIEkcBl6t/jnmc2c9yQ8paBXLSs9GOUxqdJV71arxowUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717507523; c=relaxed/simple;
	bh=QlmgN+a/E/e21BolSTt5g3U4I+oMP/3eJK0nkhmWdy8=;
	h=To:Subject:From:Message-Id:Date; b=YfgAqAj6MfjpktLXlefgAmGpuhtXrE73ht6g/Az4MQfxnsE7epxpzZN/0Yw5tt3yGIJlQqwBNE5KMAFkzdwObXoYaZHOD3s0wgLwQLPZV9n2pFMQOpdzK+5/Knw0vWJMHvKZQypAChmsP3VHZ4z9qYJ+1ciUpjy5UlJnm9Ldmqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfMGY+nZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfMGY+nZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A68C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 13:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717507522;
	bh=QlmgN+a/E/e21BolSTt5g3U4I+oMP/3eJK0nkhmWdy8=;
	h=To:Subject:From:Date:From;
	b=XfMGY+nZE3+B0xtYB+zU0C8wKara0Ax3to/mxyatWAV9mnifnmqrTSzdEc9R8zqjE
	 +Quud28dt0f8eBKCo96pp6MfTVpnPUbBQ/WiNSIczN0aZhMrArpLxTIhRetgwAdrWN
	 xvgli/0f12nbm8qjrKdBykAXr6eJbtDNhNyTAol0K99aPATWtnK5conlp5/AAHM2uL
	 yuj4Sak2KEwVm74u+hgofp4jF0sterUI30puhUx4kUlNvH5ImesSE2ADtHWt2sUrDl
	 abn5TwedT+1V6jcwG4MseyQL+328Wc8qhw05ve8YdwB2k65xVjLu5uiTX06R7GV29T
	 AZPWkiG6ZN/9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B39C27C50
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 13:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171750752279.29354.13906975283906985072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6f25b27a4c6352cbd563a4c7949233c62b2c2789052fdc9c282c5706cb23808
Date: Tue, 04 Jun 2024 13:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717507522
