Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31363AD4C
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 23:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5773C433D2
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 23:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682726105;
	bh=4i5yLTF9yPuBgSldwb7sZweKCtSeYZigmmPzkSDjYPY=;
	h=To:Subject:From:Date:From;
	b=BG3FhCw06GKlPG5UajC/RZVNdIX5t7tQADSFz8xL3RgcSlcl9dNHUjjh5Kw42rjP2
	 u4QLAfiATBKtCR35rwKFkCw/b/EU/qwp7rRNr4kf1UwILvpLKYocNBtOgmiGqW5zI9
	 QMIaGKpzBRvg2JMLb3FhjgKMur+0E5gGxQipDG3RviIEJCyEEcmnwoKXNSCqhhWRj+
	 lSTEq6YBHuVWLLxfv88svxLtooaUmDiPfe9pOkU/E7GPS3c4uEziN8EO/1syT8oPq8
	 yz/tDjiJ33NG9KuUNwjW4dN52Nw/IASJTjIk41+JQ9WF3hxX38MUu09fSliJKS5w11
	 HDy/fQXoMflfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D31C77B61
	for <ddprobe@lists.linux.dev>; Fri, 28 Apr 2023 23:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168272610575.8771.3186684859746428366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55294f66dabd409f637ba06446d5ca4b2ae76d5aa082889b20138609c1ba128a
Date: Fri, 28 Apr 2023 23:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682726105
