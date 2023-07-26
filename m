Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5816E1AA65
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 18:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C1CC433C8
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 18:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690395128;
	bh=U26txkG1nue4Dthhx2OMmlQk9SYZpSsAicxpof9Hf4o=;
	h=To:Subject:From:Date:From;
	b=Gz9ClKxY740GpL2jq14N+vyF13TojG3N7PLTp9KBpto2cC1vex2AtazaWRlNHURvU
	 QWPEOl0ua5KTrjURkoU/6t230JGBmUrvtw6UCCDxvMcWMOHAAXsxYdeCiWWWjVaAIH
	 JMzhFgIBIf8ZefbZt2UPOpgyu3IgppV4LC7i0fhH7ESBq6Sx2TE6491RZ46qwt8Ekr
	 DSfpenhzFRXH5Yq4p9K0A4r/Ub0EMQo8fzyFoKYQ+hdRMiIoJ5qEpwEKuVQssaWEYq
	 W5i9PA5phXYTk9cVhZuHoMSb3QAq/iB0dP9Ldlw0/MnGY3RcrTJQeeXFcs8cdLe9FE
	 0YlTg8U1tDTyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2148C001DF
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 18:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169039512872.13367.10257519199842697814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c55e56b1c07495596e0556657dae13691eeacf9d0e7a2800cf4abc4e8e2be8a5
Date: Wed, 26 Jul 2023 18:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690395128
