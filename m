Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC9ED7E
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81D40C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670626887;
	bh=1hEr8U7eoQ2lDv1pM0Es97Qmr5dY4qG9XhQy8wrnnl0=;
	h=To:Subject:From:Date:From;
	b=ihsBne+DyDv6gTDwKNs3/1qdefDEv8MQA9JOu4YBg43AxqGdac538/9jThx27d3kv
	 Zs9M+qBKScsmTyTbKyw7gu7CJVtgHkwwREXjFowZXNiTAAjfy3y0Ga0p2bcIQWgEZL
	 byyiJyE4IHziLtf2u/mkhZ37fQaNEz8Xb0GahfDOiJePy4fpW/kMwqmofHmDUcKrwf
	 st8atA4N5GCQXFxVCQKB8c/jyjVU+oC6nR2bVXKG7W1B49zppPTRzQmrWR6U2XcPWK
	 G91vHmbxfAYOnd210cb2s/XWWb5wyIefOtqmgrD6LjkFwSdF1NKE9sZ6yqpw5933hT
	 CUYsKb6tZ+mtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 662D6C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167062688739.27151.14601783508024006880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4b8894c51f9be4e1d8296e691d0f2ffff6f68af10daff65fb290a46a4a8a4b
Date: Fri, 09 Dec 2022 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670626887
