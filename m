Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D29928BE4
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8134FC433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671226287;
	bh=MhgmKv8N3FMrvnee2RnYuUauQsec3tuy8RBdOcQOUMo=;
	h=To:Subject:From:Date:From;
	b=og2JJvhGQd4JrDqsUTt8suep+SOO0tN2mWieHuqfpGsBfsGn8jkWnFj/PgxLly5R4
	 aDrlQlo28m6sHDaT8TSXalGGgPNCpy9/+oPNUVwqqODGKSX2dwYep21Q2ofbo7ZlnI
	 LyJA0VCjLHNcOBgJurKM62g0fP4HsIsFV++vTGMAhLhRBPET1Se91QjGO48+Ehf5ow
	 pOs/G3Oz2PD99XnYY7HV+PFlNaCPKSK1I4y0dGRfWySMg+gg+sPXQ58kqOVV02hrn7
	 PEAVXpVcUWOV9kxD8Jhmb+7kbjktPOaCYHUquzjX2y5WhX/GTpd2llKXOMhOSrIbk2
	 ufqTlnAJL1/vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66C04C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167122628740.12967.7422478359666859310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ca9f60578c6f6a30be1c353e7059b11d3197dbdb01449ef6bc174ecaf0c9878
Date: Fri, 16 Dec 2022 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671226287
