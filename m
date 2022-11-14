Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A848498
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 23:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A2BEC433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 23:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668468054;
	bh=gCXicpDEXcXpNlFdnWcfeqJXaJU9jwmsjho2g9AYPq4=;
	h=To:Subject:From:Date:From;
	b=r4Ct3qEXbrqHTJMW/z9MM9YWHbTRujjCBRBVObOwscxFmVkNwH70YDnF18N1k5Tlr
	 v2nRdxTnvX1kytfC/YjIaLZzGcp+Q/vWbKN29uqbIOCsoj/i0NeOVQ6/8ycCGZcU6I
	 TfAAMH//Y+9zJsBf9x3/55ouPNsEpLgaRY/9+LLihHS2m1yBoF/Gk1xA7mnuqB2S6v
	 w1aykGKX/UlsrWIXMRUmxvkVH8l5cuv6aX6pgkoxSiw0WmqVeXDwCgaOLeudGM0vdL
	 irk6dLMhXev7iyxTWQUJlX/XJT6tP50BwOUjBzqZQ06RnVO3C2s0eb2XoigcnVSXbA
	 40qNBnnx2+JcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A95FC4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 23:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166846805435.29739.16578881097593402645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f139e7d584f19c952ea8b531dc47a59e0ca6e689dbe3c69dbcef1f46d2cb479
Date: Mon, 14 Nov 2022 23:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668468054
