Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1BCF9D5
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 15:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C36B3C433C7
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 15:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693065248;
	bh=CzL66TobsH58FW2jURa+/ns1OMIRIdwwZ3EmMnFlaJg=;
	h=To:Subject:From:Date:From;
	b=H+rt7nw+ocp7uMXxAw26tyZNhgd1TNiCMiDuAMMqHzhr/dpf5lLZxGGqWB6o9zrxd
	 SYGnU7yZy5606Md/sp6/A7AMf5xeYiUdsxol00/EJaJhc+6SDQF6nf2117J093lOVZ
	 IczFBHVLMVPGX5GE7Rx7lm+p72Hop8HLPbLHWO2ehbV4MnbIZTQb4ycrqCO42SZU86
	 7++2tu8mbXbrw7qq3IXNaJgZV27b0YKpHAXOXqN580fJBCPGt1V8sZ8sQC1ShUng2j
	 2hKE8ddSqvl7algsg36YjbGHAJP4i3rmpgys+clAjNUMEb2yBX6YK2RpVTelr6hjXi
	 9KQDK4VVNgQ7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6122C83F01
	for <ddprobe@lists.linux.dev>; Sat, 26 Aug 2023 15:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169306524867.8861.3768466047541485177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96bb64ac18ed681954658f04e868b951a0c1662c3d5b4992378025253c2ec183
Date: Sat, 26 Aug 2023 15:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693065248
