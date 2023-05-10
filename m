Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6D31E511
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 22:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF1DBC433EF
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 22:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683757326;
	bh=pZCI2IKlC2gsLQBBa6r/JfSFNPFIdIt4l63jdzgVY4A=;
	h=To:Subject:From:Date:From;
	b=DHWyaumi/SjUy0TDTLHXA0MRKNoCdNGxUZojIorurdFRLxEaKozO3/NIpc2qq7Tj3
	 UVaqvRGeTh/v09AyKXyN7DoMdVJki5ZkQoG6yu2bn6ilSn9WfhJWxVLXIZApXKdx0v
	 b5kYxN0j6H9zUD2gzyxsI6LhWCsETefX8jgKaT1K8EYc/1zbF5qrzjLGQ+Iu6Vt34H
	 yrsUAVJsMoz6KXHzKXGNktwzDBW9wOscya2zTaiton8No6lxr1BeVar78z+TCk5jm5
	 MDFn5M5JQTl0gXhX4Nblxw2x+N/t48GH5yt+Zmy25GgBYFJUKV2go4rmRxrBZhluGR
	 bKqwGfUBV38Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2090C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 22:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168375732585.7041.8777124354955569780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee3d0ebfe786e7b899ef158b660afc74059702661ba7d4bbffd0df9cf261482d
Date: Wed, 10 May 2023 22:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683757325
