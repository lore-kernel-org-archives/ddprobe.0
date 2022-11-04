Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C60317F6
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 00:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75181C433D7
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 00:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667522454;
	bh=wyK97VMH29x3TV/Qcc18pzNQ6+63I+fWmUiK+15o6V8=;
	h=To:Subject:From:Date:From;
	b=S86aQfTDEcL2I/F+LjGgGsi63Q0z76y2/ZjJp/r7TXlWQgwK9lAAaCi5R58cEg4SV
	 x4EsKo5UiM3+8o9sBcmhz5JLI599vCW1cXOaa0ZH7AvOtWbviDS+ak07eElfWg6Cux
	 9Ld5aw4kbtlc/ic9RrKlyfsh4qM8PEduQbgr2xJYIZ3Q1TEFaCpsLPU4edpaIriFN2
	 559t0XouLZfSajmGGDDTqls7KQ/DFvkW2SHtxtAOHS6AK9c1oDkV83GB+3a2SGu2hU
	 97pvCuo2cu2Jz+hJSaG9f8db6VJC70+5my7xBuySh4pRECNDtgtNtpSggXZHzg9ocx
	 EC+u8Y27QClCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5788CC433FE
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 00:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166752245434.16406.6621747306806988845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b21bd55d91303a27e5ed22ad7e114758e7113df601f91e5b123e2349d9c9bbc4
Date: Fri, 04 Nov 2022 00:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667522454
