Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CC920E8
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 14:01:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9BA5C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 14:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689343268;
	bh=cr4dVro/wlj2Ofj5of/telQiS9M30vX1N9Vj4NuC6t0=;
	h=To:Subject:From:Date:From;
	b=QZNMsh82m8LddK0Y0vJfgopSPoe9JwUptBBf9dGU6yXMPaTz2Jr6gtN1/dYsNJ1Oe
	 Pcx5kFmv7Z9oBDo+0yob44EB+OgJRb4BBuL5mC6TxpqkQdTTzqUth0abCa+Fo55yGW
	 uxCmmPuned62RIJJpbqqUqCVa3ZrKZbxWixNWt/h5i37g7/yLPnympq9/NUjgNto4a
	 dnpo2z2ct5+6AkkPzgUBrwqhri+meNVChWyPyhLYGYhtknMTqBrYdu8Tb1cP33bmvj
	 5QkcJpgGOnLvmf9xtTFTTJv3Kgs33/EWfMX7/Xl9EFfzyp/YZyVNrLmL5csTyjsqSG
	 9khliW8kkrhFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A332EEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 14:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168934326866.4565.3602331239881139377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ef4008971a82082137763718a9c73740aa7d23bded29228ad36eb9647a53f95
Date: Fri, 14 Jul 2023 14:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689343268
