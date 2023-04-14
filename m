Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485E3620
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 01:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E036CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 01:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681435865;
	bh=N7KQTKdzxEAuNalzYt+ssw7Ak8A2NtZthJN52WsmMi4=;
	h=To:Subject:From:Date:From;
	b=ABOJwKXYTI9biqTkEla+O1fRa0INCPqWOVpPWazi831of40OvUso9st2DeQWqV1j1
	 NqJJq27Q6bsd+0uo8qP91ovhnEZnpKtrN/TVduYJdWiRi8YIh7XAj4sB/TLmHcMzeZ
	 07G3rEZq8O7Uv6Wfn+ylL3EzCtyn7KUOG7+TfWCwRMAMaM6rpvj4UwsD+Avk+feisk
	 f7zVrlwon4LDwfKjf+biOW7O9ZaLj/O+QJI0FsEo0dazHCjF1HnS66q8wf+y+nOXrr
	 HEpfIB+HoleDhQRR+GG0ZWbnMb2w7io+wsTWrxm3FQiPYeKEVagM2nndfckD6101WD
	 hh+zPR2tVXSAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C02A6C77B61
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 01:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168143586577.4717.386215444175729729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0070d88089a5da9c8d1aa47b227437e1c1d10886ef9e5c49342b9265b66d55ef
Date: Fri, 14 Apr 2023 01:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681435865
