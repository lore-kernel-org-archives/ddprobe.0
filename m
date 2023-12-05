Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0547D5CD06
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckGRMvtQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FE35C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701783496;
	bh=fixMnggTxTOeOJBlW3XiQDI7QNBsMelG7DaCCpEBgKA=;
	h=To:Subject:From:Date:From;
	b=ckGRMvtQQXiTbCc84ONkjUMyrP9zHwuZ/RcJZtRxjyRWaspLGyfZA5o6h+WsXhJk5
	 lYv6VHFNm2hx7ljjHn3z5AbemVqRfX937uVF86fxU536YJG6dxwUrXYcdmxvHT+ZUd
	 TCl5ZKSMdt9It83bbZgmC3yjbc+DCYwDVuNro8tW+KdT4Peyk81fmgg+k+Nxo7Vqmc
	 XgKJBFxBsj9jXlxi5B8jfmLtU9aZBGHTmPh8BieWORSRCKwi37oLd6JCurA4TOLpZp
	 9/J65ofR6BSL1G46mKdL8Xn/osaf9WeorUPN1CnKZ5X6OvRblOziowIJA+TEXFfGj+
	 NWRH1JodmrH1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C4DFC4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170178349637.24738.9330089421261278291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbcd4e1d3bbd0fde22e299a828742b96ca379bad57986f1802ed494f25bf6f97
Date: Tue, 05 Dec 2023 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701783496
