Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B22820EE
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 07:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2B3DC433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 07:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678175346;
	bh=xTNPOM7lvuw8T27Pv2pLk+jdc+rQTjuyBS7H+LcJr0o=;
	h=To:Subject:From:Date:From;
	b=WROEXB24j6InFKD+t0T6yxjO0QrUYMRXHNf0Xt/6MeRKtyDU+SA/vbKmO3C+JVL4z
	 NX82+2Y/OZt9QeYLBJgxs/fBQ/GRPVX4oBXFDvvTCrzoaeGsKZnPQD9k5dUK39JXQb
	 7+DzfqrRvcLeo50TTWksIzISO7zQOQw34+pwK/ZemDe8bTCcb1JHlH8ezZDIOEtrhO
	 /cBECSqyd8pS30jVN7Dy8e6dVm6V2SNG+aUqxe2iCcv5p7b4/7zRhoGizzdae8l12z
	 GVI6uirRQImmwvy0j7o0ZN2ZdmDljnl2Hv8uCXaPtEWcGpAokdU8bg60sdLVbqbv3o
	 XrqRC1Sa9RFmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D766FC678D5
	for <ddprobe@lists.linux.dev>; Tue,  7 Mar 2023 07:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167817534586.13592.13433304177857076286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a490b2bb23fc658457098190c7f2c4d02678e39431c09d5ef4c3c2d1f390ba49
Date: Tue, 07 Mar 2023 07:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678175345
