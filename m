Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482DB7474
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 22:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69F5C433EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 22:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674252125;
	bh=FYPMlCMug4bNoAv/WHjlGmMsb2VncDmVCMgQg1gtCsU=;
	h=To:Subject:From:Date:From;
	b=gPUT/Wwxise6CaPDk+GQYuRgYOb7kXdgSOenBKxsuZIK17Ul3NKnprP5/+e5LcBwU
	 ex1toulDVsA8g+eLjusGSqH897rvRDsup8AdkFhCJJAK1rXaY5idUXKp53bseuPv4j
	 +y3IzM5NKyyPbS4CAJmGahbSJ5lGmZ4wvnWVhpGFSidPzIbFLDz+AafyRsg96cNgng
	 4yCz5S58MSvfz+7r4/Ujmc2ymra+a3Xox+aopYePdTCm9l+bRx6slFzNw8AbKzwWVV
	 GXHIz6HHEOMTXHrJajB3aL2pV2H2Jy5NP2AcREJPBB6LLH9HgfEUuVm6sc90Ts/e+4
	 w0dAAN4A/gORw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FC4C05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 22:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167425212572.27995.7015848295890973278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a1dd567eb03108b8a280801f0e1752b02beb33ac0628e34930d1aa07322dec
Date: Fri, 20 Jan 2023 22:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674252125
