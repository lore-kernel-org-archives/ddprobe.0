Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A57FC4A2D
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 15:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A8ACC433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 15:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662737453;
	bh=Vc9qfnrPXmo+Hgh3cp92m0S1YvhlicVt2quH3FrtBtU=;
	h=To:Subject:From:Date:From;
	b=Bbb3KYM53GhWCCR/VtcGxyf/25wpaCbM7JyhKfTyfw1BLEICHFMuheuSNk9tq1iy0
	 1mg7Zx9bq/o7+OfME9z9W+dpgD2vRlO7R47DtM5QwnIRVEHutkGzzUvmkoGkSqp/x4
	 NajiZbJTK/jyYgvm8RQZoPtCF9iGA6EFntig6wnipQ6Qd7RQ/Is8UGHguDEtU9WH4r
	 bp9VOlMb1eP6s52INnKDHoDFiMYPQvy/mu5Xxq/1hTPZaFQ9TRHp8m12RHC+/OaQcd
	 jcsdf88tyk9oKiZz/BV9083yoJtWu/LdqQkWCksRinvd5dtI/WabtP1s12U/nUWiRF
	 e1WNzhj7Vy04g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 530E8ECAAD5
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 15:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166273745333.3394.225496116206249817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d7807b8afc459cf2ad6a8ffead32719f62b0c8eec8b6d6c0d2f8f91d8941e89
Date: Fri, 09 Sep 2022 15:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662737453
