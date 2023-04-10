Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D0315A8
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 04:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEAF1C433EF
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 04:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681101066;
	bh=mT45bVAKalFVA5EH5ltP9A3CM+Q4kMy5M7hlvehFuy8=;
	h=To:Subject:From:Date:From;
	b=lkbigC+KUtLbMPTNEKwe0YOAw4b0pLtiNw8eIjgZoaUjVfSJcCjuC5sGa/CN22+pi
	 BQOyb8DcBQxAWZWRBH/wYoUni0SdxWdO85equzjrHGmla5AFQ8ebhQ/h17BBCSTSqY
	 tqnXVSPdNQ1uqiAA9c7oWMKjERd6EY4Pc8pYFbmVjNAWO8IBN1cVDCJEzAkGa8wAdz
	 a7YOHXAHMb4sSmD0u9dINZqdzYfFz/XJx9LNLJ+Pd09BBEJUtSGb+qUXLmDebS35Dl
	 0SNnyiBhAkmaXtOsgBb9oC8IQ/fCjSwNWJ2qMr35wgF0HgXgoQFmYRVSAkxYSwXqYz
	 2GC7jfKiwamVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCD66C77B61
	for <ddprobe@lists.linux.dev>; Mon, 10 Apr 2023 04:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168110106582.14323.11020800744679568245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f06d1a516b3795fc1ee342fd0c347b965ffa8e8a890b0f965225927b5efceca
Date: Mon, 10 Apr 2023 04:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681101065
