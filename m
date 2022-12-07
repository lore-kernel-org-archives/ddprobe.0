Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D940D2102
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 16:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94635C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 16:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670428854;
	bh=mMRyTvlrg/ZtB8W8jPHC9bLmAA+AHLIfOOVb0HlbAXU=;
	h=To:Subject:From:Date:From;
	b=ae4gzkFmt+RdH3i9wGcD6H16GhqRYkkksI1wFJeQ7nQLx+r0BLPgZ3hx9jpJxEdfe
	 4yqMxdqnvmJBRrxdtIxHFnXRxuZzP7fZBSBwK/NOaikoc2KJ3O11LznfwgDnQc7WI/
	 kLZKXvx3NVKEWDjjYa0kLIDNuaEYtadBdJNxTK5812a5stZkxuVbTabOnawo9Qpe6o
	 LLq5dZ5RerFfWwcTDS+jdiaN9tSZ4Sy2wATv20ySB32N66uHRTbZy2uuAQnKc7CiY3
	 dQLo/5uoFI9JrJ9GWxofPBwqQrjbWRm3xgrZEkl6k8S/i1dnmeCjDNj3k/QAJrIuWW
	 e2WZlPb3cx0RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DB59C352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 16:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167042885443.29735.14962035084867601201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a196e46cb164726a5ff4b99b1e364f9b4c48c4795cbcab6b17d3f76fd2bedbec
Date: Wed, 07 Dec 2022 16:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670428854
