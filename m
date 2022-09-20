Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B17FD10EB
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69DC3C433D6
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663654253;
	bh=ivTu7rXCKk4XTZvRh/mSs+9ThcE1qe70oVVroczy0kU=;
	h=To:Subject:From:Date:From;
	b=oKok83M1MBpFdxc6WSuZNYGX73j268+Rz0RsBA28rWXncJQD+UE9TqttAvtjafnZs
	 uOnj5RjB/orNJFODgeUijXyS/NmDfrzXbgW7HXRs+tBV8XkblxHXURYVVteiLwqiD8
	 yp6YAQYrgCRQcriCwx+Z09gEeEHzL5sOeQ9bwRzPDDAK/yD0wWttalwgDN9RoRDT09
	 9q04hFjhnmpj9RTkqupc/YZYsO7zi6FNe7MFzoJBbxGFXxjES0zXC+QBBLVbnUPD9G
	 dBrjN+uyC92/FizjaCtekf61BpRmMX5BU1xLnM4neTwiL/EF1ubTPQYlOuAQblbOzx
	 1r4p/PM5CRnsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 532F7ECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166365425333.16963.17852048294315857357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76835fa981e0b9aa8ec0cf0d9d7d270af535dc3983aefde5214950bd3221846
Date: Tue, 20 Sep 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663654253
