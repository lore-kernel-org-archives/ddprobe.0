Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C78E079E2
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76A37C43157
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668446454;
	bh=34aFvlCpUINWYSAt54JqUehkxyheZUtEFGpr5fp3nAA=;
	h=To:Subject:From:Date:From;
	b=n8POaQ4fYQXj/3wLcDRHpdEcjsbpeifR1JkVcWh8EN6vbYyOCunjsnzvBFVarHtI3
	 NREL6VtAW9DbRsttMw5gO87E1DDb4Je+pMG+WV6+BkuMuswp51PAElLGrQLvBlydaM
	 GzCBEy8JXWPmyofY2p1V9gzRZRod28RtFyXIDx+r0FgQuozy78xeyJsGk5XY3o32/X
	 pgqODaU5IgmYgSHC2BxmQOuiT9SUATl5NqTkjr8ZwxdJSheYsCFdfhE/HSMBogQDn6
	 LcPmTE3TLcLZjWYVofADeLU65CZ62cMIk9GAG8n2YnPgTKRKwmUM0euUA8tQXINsiL
	 xUWM39h2I0E7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A516C4167B
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166844645434.29412.16819443735818527486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b8d839c8b2678edf398bc38500459fa493d16329b9ee516cae742df717d3685
Date: Mon, 14 Nov 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668446454
