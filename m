Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611A61386
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 09:20:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42ECC433C8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 09:20:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687080008;
	bh=BxWSfo48jD9BfSuZpnjWvYqFA81K4JQyaDLfJkjBPb0=;
	h=To:Subject:From:Date:From;
	b=MZBJPHMXlJtWTMWhL/G03m2JrmrPIVXo76R8xmX3N+pAq/xiRjtSHzYqXPZwi8r7z
	 NW/eQa4m6ULb0Li8TlIV9SKC5wsEbyMJzfUj5c2UpG8Vuvqq8n2K84GSkxT+e0SwJ7
	 IR9Ai4uvKP3tvNU0WlRIRRw8nVIUeX9Drlr3q/323Mz/g/5s0dCmYSjKDHwnwacLri
	 BZUA8HFxtuB/lMJcqY1jSQJI2O6gVH3GdcZ12ZC5HD2Ny2GXBAMVIAKONMzvgjmm3k
	 B0WWgu3v27lEO6r7whvTqffbOf8EEiFefhYMPVRgIMSx/61/wfxS5InjrOZwp9pjo1
	 Iid0dCAxdr93A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94F0EB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 09:20:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168708000866.22164.559024528447593485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e65c2e708b7e7d6939de342f2863f74244a72d905e3900c30ed83849371bf008
Date: Sun, 18 Jun 2023 09:20:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687080008
