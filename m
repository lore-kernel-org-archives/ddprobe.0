Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DFF7C
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 02:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E64C9C433EF
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 02:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683598205;
	bh=IAX1Lv6840MABo6zEOsfS7iEwYjzhXAaS3wq/lxqV7g=;
	h=To:Subject:From:Date:From;
	b=QCEm+DUNGM7a8NqXn3eJKlHkCT8TX+iQrCpyHkIjYt7E1c9WT3UScruuWYqSHRhD8
	 S3acrSdPEfmgIoUiG182yEY2V2uvLhUWOcPo1bokzuSjcynNf/YWnZ438e0mDbLbNn
	 bYtS4Jql3bDnpvDznu/MjlueeHaxM4HVirwLg0GqrGZZ8Gma/ZumAFwNgf3CsUjoyr
	 9g1rAICGz1MI3bPvCT/o3Ty6F044qpHihDp72VyglAB3/uk4J69Zk0PXBienJQgmry
	 wJBoxS4LyQ6yh32pNxhKAnfkpHT2TMaSmQX7a7ejfA0xkkduXF5W4FDlpkY6sHp4Jf
	 JCGqqs4MosWxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3072C77B7F
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 02:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168359820578.31437.10008616596442447188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a6cb626a406f05c957aa895030d50a6e2ff4ba7ec3f157b004a16a3f4e2c142
Date: Tue, 09 May 2023 02:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683598205
