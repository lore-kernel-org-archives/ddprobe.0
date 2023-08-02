Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAFF79FF
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 15:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C379AC433C8
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 15:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690991528;
	bh=ZIsz9JSyerOJA2LlQyxQdDt1F/bUDFA+Osg9pJ1+TUY=;
	h=To:Subject:From:Date:From;
	b=GKv5z0qUVkRrnQaIgbugwTwCjSghFQOXCARob/TgNbAC5LDcPh+C+g3odZOqfLCr+
	 iU0stsnIQENq2utcsRoq63nrwcF5++dU/0QgMvSbsBn/Qg84qFqoLE6HHQZiF4jyC7
	 5BS77W7KAk8036iQWPoz7LRSqOSvMBehdAtYqyJeJIZlyH9hANtmymMDnq/H1qVCl5
	 5vo+d3g8SyHOGVggVT6O1sR7Vl/ZZYL8aSoXZXKC6sG/sv+mdfk8Q97sS24Jjxf8eg
	 qz5coeKmJ44SBtSw60+qb0d+zoBb6QG9GJtRyEIXAunkcdcUvVhllm1aXHEiEgzJNO
	 s2KtEgpzCj5ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA323C001E0
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 15:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169099152868.20715.13592765785105665723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3d471552d03a9b107f95a51edd2709afecbbe2097dd27cbe855bdf06968e334
Date: Wed, 02 Aug 2023 15:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690991528
