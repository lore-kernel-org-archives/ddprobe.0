Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5FEC7B
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75EDDC433C1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666932654;
	bh=HquekDIww7K0hs6xsNlGXPGpwaUgFVTiXYysbFxriTU=;
	h=To:Subject:From:Date:From;
	b=EoLF6yLjkXLdPr8mZCBemPZ/6QH9o+uC860eGhzshj8eDTKkU4JZdcW+T9Q1LfOmW
	 SDqpTG2S0WHrHbCutI+SPjaNhndce//wRsM7e7PlrA40ckSCyHVeAlEBoFxg0rLZ6X
	 jvzTYvXjaud4dRJEimZqBtn0Z7JQbJB2kw8bx8iTys0dJzDxOdmtPwvKz4P+t3ss1O
	 +vEUztMogtGbYSrMAGhi2v7+AvmJzRNFufR0UNAv9Q2TxzfJ+YSlVCppzROjy0IsAg
	 uZMtCgSt8j1oexY5wuEc8b7ZOCgXhvA1M61BsbRVE4eWAxuhwF58VDqyXIfqXLfJ0s
	 cXZAZI+j195TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56944ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166693265433.5760.5364578928494969987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 790ae0931e690bb6cc0581e41b5273c004270a7202ed78adee9ee991f13eaf85
Date: Fri, 28 Oct 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666932654
