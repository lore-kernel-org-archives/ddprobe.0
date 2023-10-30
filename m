Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167FCDDDF
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZofLqpWc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FA98C433C9
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698661696;
	bh=B/WEzXmTF7tRAjU6lfoWMGwBMj1ZsaUFqZtx3Hbmpc8=;
	h=To:Subject:From:Date:From;
	b=ZofLqpWcCIML577gNUcUEazPwl+cE8EQf3pjKjhSuhEUPmnJxPtrJOLveviDd8NLJ
	 N8A4YnrsesvneXGU1cBOn+heJZJIYnbvgaK+EVIONeTQ1vY6v+v8xSMtXZzjSgGkYA
	 4hD1Njpv2nErDrx0A2s9uu/930LnNEsQ1rGLll40jTrzzmkbDA8DoEi36SdMu29V0m
	 MO7NshjtccSAg7eCOkYbmC0pK6B1Mwdmp5ImIGytPvQvvrbIB8yq7Y2DzEc3UfL+ER
	 aUAAmw3bStgwBupQTaBaZDac1smJruFU7HnWu+6Ne1G0y2PGB2UdwBt5of94b2W72l
	 6ukP7qwBwaLMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67CF8C4332F
	for <ddprobe@lists.linux.dev>; Mon, 30 Oct 2023 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169866169641.5343.7331374962150536539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fca6cbf879ddbb11abb3956821fd431c493a083390b403f039281be3d632be5
Date: Mon, 30 Oct 2023 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698661696
