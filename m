Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDD8B33CE
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 18:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8618CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671820287;
	bh=/DJp9gdcjS0Nim+DKfsKAaOHptBlXua0kD+35cfccZw=;
	h=To:Subject:From:Date:From;
	b=jj5zqGrdSNxV3Fa8Bv82VhNwSjCvZY9HTSIgYP5JgUy2AtlwAfq7tJh8tx64ESBUJ
	 hzJHKS7lJeVIX4DDTEfFTZQELxcniG7pQXh9Sf5Ml9cCvY6gWRW5l80fSYh2xOUshS
	 PQpbppA0rdQ2W7Sdkjfb+/NJu1nm976AIqKYYjLqsVMOcom1NfMY2HnVDdpZMzF8J6
	 srMJGU51+es1oTaEj36l3wbZj53aPUaoJaVZAu6HXjl2NV0jFwA0RXvxIHkWbzT92m
	 lg/B71MH69lcYbbBpGgUOH1FyC8Z+ozR8qqP1Fz4qAiOqXQggacLJ1XnplgB3fqQfX
	 +8Enyu5MtCXgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A25DC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167182028739.18410.13773383132633659729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bda36569ba87138ef1bc8d58796f608d838fd331536d2d472d7910aca835832
Date: Fri, 23 Dec 2022 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671820287
