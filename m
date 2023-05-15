Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 730911FBE
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 21:30:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 14020C433EF
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 21:30:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684186206;
	bh=p/B2XbEfU8yj8+CBAZvQWdQwhf+80S7ctA+ZlRZCojA=;
	h=To:Subject:From:Date:From;
	b=cxVZTvSFvt3cqOK8AeLqs7GQzhTf4Vlm1FrLk47zQD9EM6gCA5XTbnAbbd2bowKBU
	 N0e8sYEt7NdIMVt7ElnqaL4wSUd+4U83UFlGFgWtge2eCz5YeYsiog336UlWbQyBMs
	 cT0GptEs11lrJog7K9bXH66BfamK8tqWGgw3BwExHfdozdaOKn6nv4pYBOvzfkuRrs
	 MidvKuvfvWP1BIp5blf1BDxkUGqI4jfOmLvbOmvS3f9fILPi3n2Ar8X+QVji7K5MqA
	 A2adbVb6tRM0tEp+fCK8SkKswzNtlu9RU4g+r5p+LWSXUO+v8CYBpTRtR6jVTa/Vby
	 EwbilmirpWrOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB19BC77B75
	for <ddprobe@lists.linux.dev>; Mon, 15 May 2023 21:30:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168418620595.22581.13992544088584021253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf73cc700c4ebcf0cf212199e8798cd9b347eb1dd983e48a0695ccbfc62c9aaa
Date: Mon, 15 May 2023 21:30:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684186205
