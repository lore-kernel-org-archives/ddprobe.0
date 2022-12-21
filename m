Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6BB67E
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AC13C433D2
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671599487;
	bh=jW5xFKIhFe+B59sOQ74NP0Vw9Nwvjh+/JQcwWhzI+ZQ=;
	h=To:Subject:From:Date:From;
	b=oGbUf89VUf3A6NvjYKGXQZ7X4IiHk9UE9iadqn5rklXrSeot+LV3OyV1DL6gGYucc
	 LmVe54yHHvCM5N3k331h+xVhbDUpOXef1oJJa+hCK0d1NehuMKEuCJz/9hAW6EIP+P
	 pTwCmSm3vinkmSEx4DuAVWZjlWhJ83zzVJEQy2gPkDJtz+pyT8D5cBJs+8O14z358J
	 2Dl1FzxsS4Z2x+q9BG2yFCHkF2w/4Pdtu+PYVioqg2lhxrxJSxPyidsQMRQ9XNYvpz
	 HvraIgUiq04SxL9O+meE5OU7zZXe0VejgCd795JR3/kRo7TOqNujCBWSqB3eMBP9aF
	 0YtedlqzN/JJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F942C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167159948750.22813.8993218263590685943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4be738c5380b7989937bab6cf61b4a4875ab613bda491c6a882a3e4a050995b
Date: Wed, 21 Dec 2022 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671599487
