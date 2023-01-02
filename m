Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEAE63208
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D97DC433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672701087;
	bh=3FHa4qH6tJSKdhtVXFoiZZl7fB/Yy21iVww3uoZR2iM=;
	h=To:Subject:From:Date:From;
	b=ugwawxpVcuZE36Mw5oQevr2jgyS6i6ylfKLU4bnhhhmOPbf19EFe2Ajtx7M3/UFEZ
	 +GGZdK8eEn0qJQYQ2b3H+ZJAhP5Kx3p12cP+H4kIXSGio8ZdFYzzxhM2thuDlwqJI5
	 zUC6NTYpIn6SlJn9a+Z6N2DWTkc+BaOhtEbT/kGIPuw/TOGMqDth01o+UdMbPzFudc
	 JtNYiHdzEsHH6n/OX/ZNP1cEesiHmCagmz3+QKKNdPz0MVTu8jT0bUKrQ4N6twsD+d
	 sywID55O14yNLEQJGf0XPGJJjJ94Ia2nNeFGlyst7j1sNqo29VT6vtkG5Txmvi/Euu
	 7VIVRajIWaOcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DB86C46467
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167270108737.17601.12835157324817961494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df188d9f0482e78895441880cff061a0e2a2cb07f56bf2f1268d56d74d031742
Date: Mon, 02 Jan 2023 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672701087
