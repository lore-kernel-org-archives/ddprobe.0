Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3855B381A2
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 20:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yh/oJerW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC153C433C7
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 20:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697487428;
	bh=YAUvFbs/oVnQgelBW5tXQ5dunBjw0jxON5wRUs+a93o=;
	h=To:Subject:From:Date:From;
	b=Yh/oJerWLUfssXxjwT+FMdHzcjT7LqgLGb+R2SNLL+UqNSsmlnqAhe2jMSWATbcj8
	 yYGdBfUyRg0lCYGOE7wCEINBubD2zM9epDEoNZRFeglu2vegJv35thHu0mPj61PA71
	 WQVX4C6id9gwdI/KeuGIL25OKmdJwLYscNGfkWnXNTP2SmhevXAwFspWJV9/Nh8G+Y
	 Nq0/Lq9PoagIGyZB+Ny78CAX0Y2heB0lYDtOAFNtfhfCRrBpe8t8zVUYSRd3xSW51c
	 sJW0KfB1YnizF7glnAR4+wyq2NS+WDTE7TtiB/cBy78qi5UHcObb+opeXfbU32Z7Nb
	 WuJJCwhZVVWYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A537CCDB465
	for <ddprobe@lists.linux.dev>; Mon, 16 Oct 2023 20:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169748742866.25545.15016747731064808209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeba6243419f14626e473373dd1d684ddc437113da75e5707093e7fc08747678
Date: Mon, 16 Oct 2023 20:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697487428
