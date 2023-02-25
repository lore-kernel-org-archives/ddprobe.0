Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4F9194
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 16:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF7EFC433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 16:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677344105;
	bh=5/dXP4PlqSfhrMQx4oZczyNNYCRgg5ZUKYVDuK7p6vM=;
	h=To:Subject:From:Date:From;
	b=egxh01Wf8iMN8Art8hzjWRudex2egm2dalDXwOydkacJfgP3tBy/j9KgYpfLIxlb3
	 /DMg/oB+eMyW+pw5wL8/SlRDSwSDAZOL6Uz1wB9PIPNZ5/WodKyoieEsjdkR8HBifL
	 C7HZ/ymR7FpWXVYUabCQ7YM3XomfSmtQW+aEY+FKtNqJD8+9eTNaDoImwQzERWjxN/
	 WGc0qBEqr1UeyN9ZrtxSyogz8rnPWg+IcniG5ZYruraG9RexlwDRJiwPq0QmOQh7uS
	 UabmGyI6aJVkDSuVuz3UfV2/vy7sYeNzP2QRkLXeWZv0ZKLBsjA7uk07+qNn6imioe
	 YJ2ZJ3DhrXEeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A9EC64EC7
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 16:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167734410573.22400.15354715940373758043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad534213ca8f98685138a7b1dd8057ebd9d988ead519cfd49c74db8b948e0799
Date: Sat, 25 Feb 2023 16:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677344105
