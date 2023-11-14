Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165F011732
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiH4+Wyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CF5EC433C7
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699946296;
	bh=T1AKG2pS752ImkXEks3HE7TRyearu1id8aUTTeeMOz4=;
	h=To:Subject:From:Date:From;
	b=iiH4+WygtlNYTOcL1cUJQaadklx/k1hBJgglraSoyHbzOTFcvCQJdjwAi40pwLlw/
	 s189zHld3TJqk1GIbyR0NriebRoE+BU3CKuk1IqNZ6iQmGRc+jJEgKtwvuLabh9zEu
	 XOEGvBPD0hdm7AIHfsspbZ3Ze67wZ+B0yW54PeNAiXzxVF78gdqan7t1hnSHWlQtxw
	 /VX8VMQw9CYHVMzZJtvR7q370plhiLfELwCXNOUeKZAPcvs4jeenknSbnRQGRRzeKH
	 V+nTGMTXcqzjtP4pp0gjVzEo7uI3f8OQUDp5kZB8/saIYI048CcF/LfaDPgCYuUbDx
	 cP09RFp7VwGPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FF16C4332F
	for <ddprobe@lists.linux.dev>; Tue, 14 Nov 2023 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169994629638.27131.13223793899628510940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e63b4735eaf1c9540bc4f7de8250abfaeafa40b4dbc30733591ffa4a709e68e
Date: Tue, 14 Nov 2023 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699946296
