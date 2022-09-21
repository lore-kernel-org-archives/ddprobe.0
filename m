Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD3067C
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 724E7C433B5
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663752053;
	bh=nuXZ3nhhAXCctQ0m+asUdqn4U0et/R+uB9Jk1e9+VJY=;
	h=To:Subject:From:Date:From;
	b=nDjFUzB3tg1SkPZHpqhYm2ojnfBXd5nTi9U66kmRqVKFO0pvVspwqNfZ1s+j8fFDj
	 cP1gC3tGxhwZ/O1WOB108k4d+wSefodzDRwKKh1HpyE1YnJ0fJS1T5C7oF8UhmlE43
	 yZWnyokhA/K3kmMWVhRbCAT53gXgNUqgMs2ChmWo9Fka785IhNSasMFdeEkwjw/CHE
	 0YoW2jfmJdyCd8sDF3Gl+1bEjSze/rXFowuLdd3jhTzW3PTVbKxeWR0euO+aarRJx+
	 niBEWxHLq09d7o0FXsXpAAvL2akigFgPaWE5OtT58TpK+Y3c7WD/rZcvDSsIneQFBr
	 DvX8evf6bUV2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58ACEC32771
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166375205335.4534.7602074936180238286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9928bb2c95bdf53912cbd2f59a1a371c7c6b43822ea003b95e64db71384537c
Date: Wed, 21 Sep 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663752053
