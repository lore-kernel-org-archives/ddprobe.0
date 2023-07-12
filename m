Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 830CDDF58
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 23:19:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED36BC433C7
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 23:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689203949;
	bh=2qNpTGaUnjFcSUleaUbWyow8qzp6B9FnOdh9yuTwb2c=;
	h=To:Subject:From:Date:From;
	b=dlV0QA7IapvwCJrAKYnCz4DygakeJrvoJBfb9oX53miNvOilSPB7PT/e74cGdL6qW
	 mv6cqWHciw+ZerUaG0OaT7HrAe95U5mNJxOFYFgIBQnZiVrYyamYY+quKf9AxClcnM
	 9U7EWk/B0nc33Xzaq+BbzJHYxPGU3i5I+HB1fgmxc42pzhAfEV5M7/+FE1Hhfibgsy
	 SEUMwd9qqaBSdU/vBurxvayF++tOtaYy0NhUzSVQov63koRTJMm4ASefGyXklnntL4
	 0yI+Os3Rx+q7lNvZA6V/25JbsDxRq6QMtt4hiW7FUvYo23690epVp4HkU97559uKGb
	 4DY8T9peHkhHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBF5DEB64DA
	for <ddprobe@lists.linux.dev>; Wed, 12 Jul 2023 23:19:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168920394882.18082.16467465417872862718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b789588221e09459969473f827e3fbd5f2ad64f2b3fde0990452dc9eed00b92
Date: Wed, 12 Jul 2023 23:19:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689203948
