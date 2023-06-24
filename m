Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67D4C4433
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 14:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F3FC433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 14:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687618388;
	bh=/4x17/+tWf35CehVUmr6jxGcVh4/u07kydYyQGq1dnc=;
	h=To:Subject:From:Date:From;
	b=kQYJbXkbDIoZxPw03lwYC6asOaPxxxZVccv/6HXp+PCk2/kzpZQWtJB4xNEvDBIP5
	 J0dkZi7xZ/64Awjhpv7Or3VRuI6Iy78jhH7hguhGPCmfgTzogBEiaB1IxAxWZaekFs
	 KJRU7n4iyN+/Zi+XuqxnsPMrwkKuWUQRdP7A44Rco9LylmEyCUoxYBlVoq7fGVyGlh
	 UMsJOxeg59DaxzXtrHBmnn9Fk7+vzLz9yaoRH9/dpPH5Mk3ToxlMOCgZaOiiYpoMQa
	 RskrOTCfcpauPsofFe2z6jBQXe6RdDiIRVGx69ZwI5uceaW1Ttpu8wYf9uC3peFfuj
	 mL4O2Vt7AjPJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A530DEB64DD
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 14:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168761838866.2796.6129448042310753555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d72391e29db7ea3029a2b6ba6fc4bc9e1b007d893b04d28b0599e29c0a179fe9
Date: Sat, 24 Jun 2023 14:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687618388
