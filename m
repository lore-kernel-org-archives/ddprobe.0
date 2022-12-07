Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B60BD361
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A255C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670391654;
	bh=wxqdXLncE+f+XQaFzDwkAzbXG7aV1SOoaWKdHm1JSZc=;
	h=To:Subject:From:Date:From;
	b=LOpwE64CGj3YKXln9rAqHWv7kxhsVl+oXXix6O7PkWSp3rtfr84b8uoPIHRIDqd9f
	 dhUK/ZU+WQNWiOFzdDGBrpP13JNNE7wjb/Xxc+rXA3ydBGCtszVfG8gIjGI7vsVbO0
	 x1PbqYb0wgvhIoACKmmQMl1cRCr/xgOkfgEeRVC6duNWMcy3lcwjiZk+RGIerIszNG
	 FN07dReRstNcsdX7QMlfSL9IDwPABFttV2R1CYudoTPaXXnsXgZd7VJaYnFQOFqkLx
	 bZVtdbOInKyG9EAkg/KzcEmUMlOkUbOVFu8Zcy8hqFt0RfqlSgJF7GqLeIkvjnae1q
	 hQr0tRBxO3b1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FD46C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167039165431.11327.12177326949584754708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f96debe6a20151f76ec5d37e0d66de2a904a881f0c7bcbce99d9d7bb2f42f84
Date: Wed, 07 Dec 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670391654
