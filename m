Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CAA20F2
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 08:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF170C4339B
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 08:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680510965;
	bh=0N/Ewl9Ep0MX/wnoTy0DarLAtWDsF5aGISm6xXhZ6aU=;
	h=To:Subject:From:Date:From;
	b=UHd6GpDhQiuq4UBjAAvKn9pQJsdY1bU/W6J4yGvi58lBtJk4pxJZYvznOxdS2Bu4r
	 hYC1DDwVAf1vUey1dxda4/UYqakhxbOY1TqSCaP1NLDk6B9lUrFoKtoZwIe+t0K5q/
	 OWVEf2ADsYS5n13eSYuMZlSjWEpZVonHTqZ6YalhOPK4slu5wgCz3U2muA5wRbdI+a
	 mHLIFVMJgtKfoUaiBms40smeqAPXMjY95CI6KsthWoxromUhV0KOmM8QNh+f8JlYoL
	 DiKAM8yh7dQT9qEZ4e72YjsI7/FPlFKvM+YC/xxULMX7/d6dCHkQl18VdmDkmnbLD5
	 GcAGhRDuopAKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD51DC761A6
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 08:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168051096576.18423.17820347852739382102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c40c60f52e462122763269373fda8a20981408bd0bba562429af78d39b828a9
Date: Mon, 03 Apr 2023 08:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680510965
