Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8DC88BF0
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 13:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F547C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669643454;
	bh=icIQX/T/BK1ejlfbujEp0BTphpdkaromhOPzy24C4KA=;
	h=To:Subject:From:Date:From;
	b=fV8rEfJD9eVoBWjxhMsXyYfQouN/XTfiAz9jGDAoddbN5mV3+pCCjvu2AqkpM+c1B
	 2diELkhWLRNKL4rPxF5x1qzoeeUg5vBIiYDrlqGVHwufvlg8TS4cgRFKRzg0lPgsqb
	 tavQLUfPozh9kvZz0E1IvecLkR8opqa20FWxxE8VMGcsyT1efxThK1GQVGvRxpv1Ta
	 DZ6pi1aql0JgDsL083j36erNPTj06fgwmk5mezSViSL50MgsJFsMDYCuX/H98+4Lik
	 NfDRk17xVVmj1ipW33szAd6ITInO5EkJWnOlx7nfNyrZISCOWROVQ2yOT3Y3XFxf52
	 5TdoaQJ3vBrUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58235C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 13:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166964345434.16988.4524908481775648221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70e711d0f250d6d4a5e82b99776b1d398d6ef2527eb1b78b2172c9125816ce63
Date: Mon, 28 Nov 2022 13:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669643454
