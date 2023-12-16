Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23899134AD
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 07:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+BDcUty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73CC3C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 07:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702713496;
	bh=afiv1N/JYyaYNZjHDL7uAJyx5KKQVMiMucMdPSnCQv0=;
	h=To:Subject:From:Date:From;
	b=L+BDcUty9MO8FAshgRN1bSPChsyDZy6YcTY7e8588UpOcXXo24r2pprW4uVt7GDN3
	 CGyGtaps7MCXlPnNw6+APBqQENXMQllALM4M9nFkh9GXLB1HL6PJWFrcetqUbATING
	 WAfVwfbk87WstNUhDdjsjzIHlnsKd0b9kjnSlQSi0xLoKzIcMNRF93xSXPt+bVxn1Z
	 x8lITnZNANu6/lpEcA5NyZWboDVrMK1FmBVhtspg4gRv00Q5BoJ2FYvM5JgN4jVdOI
	 N0Dsm/jdVbBwRLlHDjMrnpedK6xPVAIjMByAKwlfIhdijsGA7y7zR5fKdylIhknpvn
	 mxWL4rNpaa73Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B8E2C38147
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 07:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170271349636.16691.827767590443195618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84936480519e0850dc5ad0f01c879ffb0e51a19505251f7af9ce9f642367faea
Date: Sat, 16 Dec 2023 07:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702713496
