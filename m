Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C221015CBB
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C90DC433D6
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669155654;
	bh=N8JGTxrgbJihJdRQgAJ9aA6AA2P3iKaG4sS6UI5JBtc=;
	h=To:Subject:From:Date:From;
	b=g+uL9z6S+tBvT2pDBDAkT+kaP/05t+1vDrBmDLXv0sbLSVAJ2VcQ5a9htJKh3ALS3
	 6arU5P01En9QCUs/y6QSIbZZV2ioo9CZsgX+/mGTIJK9oGShtIh3qCVfWFxx64MnSM
	 D+dhErMEZGQUe0Ihm4soBRj9KrlAyPz4hZFnDTjuKYzYqkuHYxUP2+yKrRMx4HhNME
	 k0qTHAH1968s4k5EHTRWicadHXnLAGL/YitYGsDyYWq3e+XkfbfAJygiEUD9Bnba/j
	 r1PEr6bqT8FTXI+ot9Ermnsm3joqOG1HOMaQLX2zzAqlUoV3VgZz9BDcUuryuQA467
	 w7W/lHkWTza6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E3EC4332F
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166915565434.18221.17362858020151771550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f399a5b5c0eae3be1eb3cbe5fd11d1446c85d029c9f0b02628c93d64935d95
Date: Tue, 22 Nov 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669155654
