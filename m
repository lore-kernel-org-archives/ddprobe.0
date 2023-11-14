Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0543FB19
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTrVAoS7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90E26C43391
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699966096;
	bh=u+OHYaRFmYtEkVt8qK4btivxWsDfku85JvbG+tLq33Y=;
	h=To:Subject:From:Date:From;
	b=iTrVAoS7xxnftvaUedjsee3F9mxpoQnMAbW/ShzjCJJGPaaAm+urcqdf4bk8t5HoX
	 MXXSXg2pFD0N5w/3nLt+//T21KsRgzy/yAO5bmRjsM5cES50T3CRdPy6iIpwh/PbnZ
	 v0qqd9mmuW5fJUzU6wEHefEM0TxrX49mJqYA06wUPuGKeSu0yfoIjFNHO3VeD8Ind+
	 MmqEs2iBIaAhXV4+GeqHkAJaVim3RMir/bk+z16QeAfpJvJDlayaBRXY2meqNQOfN9
	 UssePtFD3lwLdW/H2TTWGZlCCum7EE10Kh/K8Ng7j/VuvfJzsxunx7q7pmM19BAo1E
	 S9Uv/bX/8BcYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76BA1C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169996609647.4671.5521116787321428069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39b1f81ed67075cb7c2ce815769a000a1302ddba5b6aae40b41f5b916091d069
Date: Tue, 14 Nov 2023 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699966096
