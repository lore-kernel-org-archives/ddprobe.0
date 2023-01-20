Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E52917C9
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 07:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A62C4339E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 07:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674198125;
	bh=ObSslQUxd5hXEFSUsCg4OZDdxBqsdUFyyUvIqzPBYKE=;
	h=To:Subject:From:Date:From;
	b=BYROZHT9pJyaK+d/uquZMZzXIS6BFqiWNMms+i2jcQeiS0mIkqcAtqD+4TDRlAQP+
	 b00/do9n3/TYdSpEe6rRoMxyCVkcZfr5wb74j10J3YvPkAKWaBaRDCqnZnVMqxTSOP
	 G/2nNj4TJFgOciFsVU2cwBQhcqIf1ecQHtdbZt5At651bFsg0bnkWQ5RKfzFqdr0XE
	 YuskNYFSDLhccQnf5w+e5SnyM4rfJsATkmo7RNw7QDCswhwa0vqBN20bgYidxQ9Lu3
	 uUsOtWxIrVdcesVgN6EXb3PmirSGOkci/MisOwlpTlUcUuLoxLWr9tcFg78HYZNNGM
	 dSUy9uoOLs61g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35E5C05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 07:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167419812572.15317.12919645267949117296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e72793d286054a74fdca039711d5096bedbabf9b50eee706da36c080334d97f
Date: Fri, 20 Jan 2023 07:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674198125
