Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6EC17C9
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77558C433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664067053;
	bh=E4nB3YrjglqkZkBwmGl5/+J4J/q8L4bpJ7PKUtlUKjg=;
	h=To:Subject:From:Date:From;
	b=gkIyMFFus8jCYZFd4XFaePJFBMQT6KC1+V76xAcjwQ9pj7IXOJe8OhWwvUSZ7+lcK
	 Aks24Hwjphq4hF7BySTH9rHYQIHySUoqaGPDwwXLKJGt3CN6XS0vo8fdQ2/b9PBRIY
	 Mgq2OMxjRziYq36g6W1M13mxnoxDfjjVcnEqSV4a6CUywh+1coAGQxasWUnHO7CaVe
	 O9d4UiTqiOxcrSIOAwttwkQ+oXzmSae2bl8pESOK84BJwvFwt2UvdOgdkAWbx4ZOx1
	 kKZ5SJ0MLod2dXoRuZ7+muVXah9+ZF2VUM5RtEpR8FjbiD24mgDv/xAhaUHxuaPXwh
	 sjLJJLlTBQqnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D530C07E9D
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166406705334.30137.10880554893240520797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7716d8f56941297407a626fb25fe7898527469c7ee227f3e651f5b6445ba2244
Date: Sun, 25 Sep 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664067053
