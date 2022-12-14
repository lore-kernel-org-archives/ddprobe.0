Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFB86193
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 16:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BBCBC433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 16:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671035487;
	bh=x26zbJWqU7DkfFGZuWp4ocjNX7BK0HKo6MYIGzowKnc=;
	h=To:Subject:From:Date:From;
	b=QdmN2FwNBYqBJQ43revil9eNZkwokAuaSqY7gVIQUXUjLHbvHg27Pdoe2APINfFdC
	 sPmV/BNAI46UpfoJycY+zP2ka2n7icK1om+cjB8mcvmX/uD78BfEdQ29krweWOeh/5
	 CVPG0R/nGqWG8879Qx5yNpBtfhEKEOfMxgCA1Ds46AAGHMOY1e6BDJwWVVCif7TC9o
	 xjtylOW67TaltN/lJSF9A1hPBIMyB7phlymIoXxwMG+RaSQLLX68gT4dqdI7ckaxw0
	 fSMUFK6pEVjkXi599EOcZxgpqDoEWg6FMb6JHujIgyEfCHDQxa/NOQ5R4n7p6OpF+U
	 Tk/FqMvIAio8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F333C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 16:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167103548738.2955.252303981323568759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5958a424256ca2d86ff94aa8b963e9e7d20ffbcab28f3492f3f16510e24ba7a
Date: Wed, 14 Dec 2022 16:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671035487
