Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D1CA79F4
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 16:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLn42SGX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA217C433C8
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 16:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697386628;
	bh=R9Kjl/RXnHk0tcPVVmSxN4G3LqSV6v+GuYC/ykj8Rig=;
	h=To:Subject:From:Date:From;
	b=VLn42SGX253U9Abiv+pEg2pdaFj/l0ZhlH/K06bDE0aGQKpZWzJ3P3cpcWCL3mL8T
	 kxm7d/wvuFOmj56tLLPpnaX0pxC+N7qR59el3WOM10JjKWwOVK/ZydiXdtQ6PZH0XY
	 SF3ndj+pbho/7CntyxRp2AJI/zu13860KiDSKXEJFqS2IlvLa00Lix2Wj2WEocnlSl
	 a2i2FaLwCEW+Tq7tZtuzobThN978RUQVeQGCjvugkykdGcONtc378jOouGvCcJnR0r
	 7iMuuwYemIRv9DTt/5BcWoMjsh+h76fH/UQPxnh78Hi0spAJfrhtWcPyrVQ2AVNd69
	 nzUZSemxtFYSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7262CDB47E
	for <ddprobe@lists.linux.dev>; Sun, 15 Oct 2023 16:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169738662873.3636.18174532479247533140.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aab11b8aefabcfde4027152f88df0c23de73b05587de45a335f8357c11848ba
Date: Sun, 15 Oct 2023 16:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697386628
