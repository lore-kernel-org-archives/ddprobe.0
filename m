Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5BD23AD
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 09:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE87FC433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 09:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679478545;
	bh=ULGZSx/867mZkXT1b9waHzj/HOv/UJTRofwaEnLUVCg=;
	h=To:Subject:From:Date:From;
	b=WUaDqoQvQ+v3qH7C36LQxdzEbliUv6TP9Oz+/pLoapp1r0vWHWWCEgWM+QwFVwbXm
	 LyoyYwqlESGFOjdnvuS8y8pvAKrsYEMDUNThNJhUjbs+JwYCLo5XYj13pGc4ejPxnT
	 DCJTkMdNbuDkH1tAnKIWAFwHNoRBnHMkpE279wjMw+lYhUzuY0TJSsZPbqF1/sooXG
	 ZXq7saXZOn6vGItntP7fQ6vaZMTrY784jbOEWqHN0OWvhz2DC8t7ZieAijJ+TWZWQu
	 pzac5P8IT0qD8Fe6Fmc9FzqHfd8gbn6f8vNudtmUnEp6K+u/YHcLqqWly/l9CkjquD
	 oeypkGGSB7hxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B63C7C6FD1F
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 09:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167947854573.2443.16508781396166652546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a91a57bf526d44010f24f0533a75ded99bf064db506e1b857603c93d4c72e1e0
Date: Wed, 22 Mar 2023 09:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679478545
