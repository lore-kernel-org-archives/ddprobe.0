Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7052582
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 21:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9433C433EF
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 21:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680903065;
	bh=fUM2xgjOdsU79M5I1VRnD0bIf/HXkjNwTmQ1E98YLj0=;
	h=To:Subject:From:Date:From;
	b=tjIn7s7kkwNRZvxMFK4xBLn9b4hVXV049J3SwMhQ/oakxmL2ShQNbylqgE2wOWKWL
	 O5yCBXwioGTrGYpksVSpCpFb36T5yfvBuLqPNc3qXueFdxBZOET2dxnM8THzsWawFI
	 YEecrOC2zxtENBPBvxuOZ3YDanLnk6P/QlW0I8+f/tiF8i05+cN5THeHLYG8OMpBxH
	 1MC/KLPtSj9HYXpQMwe5XlYoN2vVD2efWC1YTtF5fBaBxIh04vSY5Axo1JB6wMBzno
	 V8q2AnOto0zImOt65iL7il5CYciShptgBMAOqpMTknuuW8usO7iURZLVfcoqJDnVq0
	 t/lSeVGgev/bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB321C76196
	for <ddprobe@lists.linux.dev>; Fri,  7 Apr 2023 21:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168090306575.4713.2258980535654914773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5917652132d110184e53f75eea73b9908d30342c96012ab8109fc2fef7dd908
Date: Fri, 07 Apr 2023 21:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680903065
