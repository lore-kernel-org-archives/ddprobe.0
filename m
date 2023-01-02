Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6C4F17E3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9037EC433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672632687;
	bh=sb3o7nfIqBI7S7WTQvRRzgom5SxSJuVFho7x5Sh3Egc=;
	h=To:Subject:From:Date:From;
	b=tuTKvZEkvrhigJjiArYV5ruRJGToJD+I1vhb3hTJFotfAxLqyjeQ6IsngAh+6Tv0d
	 n93r6E9FBD5i4J/Szj5F96uWNZo0UTC4QgcKxS9xH2q0jd2PM3lNmrjaFh1NUtL/xC
	 CBFoDW3sJUb3JNdSnRf+qThgzAlp8roaVrpLVz3WAw0QfMxKMYaBlmfnhVQt5LewJy
	 FEuzZZivfMvaG6nF1AzWB3i10MENaoKA6aRg7Whd2Qolc6sGNG+3jB2Wc1oDyTSifW
	 Fe20oi+bW0y8LSIk3QAIHrexxoCcheVb1LPUyVjqAfPndnAazPiGZ1R5o5AudKspwg
	 liJu0fQ+kKaFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 690B2C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167263268738.20010.17653174075257562880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f5eb0e7da4fb14149dfcafeae87005fa80814c9f92ad5cbb987e2acc0b5a916
Date: Mon, 02 Jan 2023 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672632687
