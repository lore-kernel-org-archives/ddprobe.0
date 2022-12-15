Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3BC2F35
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 18:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D2DBC433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671129087;
	bh=s4SZeEFxL9EkSrnlQoLK6ZKSUTpdwXh5GYTAUj8BIUs=;
	h=To:Subject:From:Date:From;
	b=rzMxRPBzzU9+gMfBenM+BNOOSnzhSdENOaMZgy9P+eS56RDNt7diGQ23QrSv+pNs9
	 0dIZSYIfLzuKENBmydGraXFEzv9nAv1oxyQJ/CMjy9dE5jf0xQh8fkhvhBOGSg6EN9
	 Vfla2LUNOTrAzO0sAH2cH4kG0n0PQBE513UE6rMZJCdaSF4RoJg6fpldMbcsz5vacn
	 k3MZR8yTyAwKaqaq+0eGix6qxa9G43lslZOk0x0s/9madYyOKpUjSC1Xdo6fU7PkK1
	 gCUbEgL75jv7XD7MZlCs7iHML9JpVWQ0w+6cWnKAwmoKQ2UAH5FAUGjGuWPoqnuDxD
	 9crd1w0yyRPYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63BF2C4332F
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167112908740.15964.17139724401005605572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6178fb4dfc988fcab4d82b0bae31c3aa00ea3ea09de9e78f1435883d2d4a903b
Date: Thu, 15 Dec 2022 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671129087
