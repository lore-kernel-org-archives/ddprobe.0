Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD43621
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DD4BC433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670463654;
	bh=fAbairpCELbiW9y2Es9Ci8Ohfsoj+vkEG0V4pYFRmFw=;
	h=To:Subject:From:Date:From;
	b=aIwRt8JU91aEMkhS5uXD0TovaxTZxAp4CFkVcFbELDOhfEOwPiX51BxsqZ2CLhiMQ
	 VgS9/et8funDJgGiQqQPE7ROybEjZlWbTOuDKl8ownMmVcUBmq+ns4n4imSVnwuLw+
	 qUEMm29+iZSsTwfD2tHvhTRQpdc98ciAYT+mdO9onFQHIeTU3a0sdOZBQetqlXVAcj
	 yAnw89XVw6gZEll0y9NcUzIhlBca3DJBVyJj2/mHEji6FHo+/3Ir3gtJOE5C7YEsvx
	 C+vX1kvmSO6AEPEkCE35gPao/rZV4ILfQr0KdyGPM76D/X+wBVxyMYiz66cKNeZnyq
	 lk2+a/wU9Xnuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E38AC4708E
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167046365443.25484.1671112361189766244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ece54e6a8f6f722bb2a428c33bf1b4d2726821125479f6cb0518dafc863bfd1c
Date: Thu, 08 Dec 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670463654
