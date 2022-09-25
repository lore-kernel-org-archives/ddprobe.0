Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFA033C31
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F298C433C1
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664124053;
	bh=4tYDZl1Gvvub00+FTNc7TGfOyZo+93tHp9hdxnkLcMg=;
	h=To:Subject:From:Date:From;
	b=JrmYDmHDhGCtwDHDsp5l2TEEnFQ5otjJEJdRajqBb0YQHJzxhzvBZsh8T/BaCrcA6
	 tsj1mfq7+jIdOz4tRYLozJVGu7JXMJkD14CSmgCjJXexscpf+P8bHGimUh+M7Gk4uv
	 NFerLWURL7OtkjHaWpuYcdep/8FbOMTzgiDWT8w8S2LgB3I6mmQ3JsiBuzCptZvhH2
	 nV0KDLH1ujShUeI9ZxtMcTT4EZBpe4AEbJV0TlgolVbvDJmlrUMKOpkua4pi0w8a+O
	 5Jr6LEj0xqAGDLQapNdVkWSmSoB8aZmaBmgY164CnBvsW3S3/bIwKWsujlxqYQ2nHH
	 XJoGncrfMlNKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E2EC04A95
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166412405331.8842.5234880102453368012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e5a6cb5e2121df469670cd285edd05b73ac9466521a46adf365b812164bf56a
Date: Sun, 25 Sep 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664124053
