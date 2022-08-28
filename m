Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C868017E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 08:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F0FCC433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 08:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661673652;
	bh=1Uma+EuFuhzq3ccGxbY8cQA8v6dnZT36swdynCviivs=;
	h=To:Subject:From:Date:From;
	b=PkLpbwzE86e1w30XjNhQxeTRhN93zIZkD9g/Qy9tsLRP6+JKoFeMpogIlmUpmUVLN
	 sKdrCfjbEL/ZMFqt1prmHfGCOGUPvTVM4aM8xqGq/95B1v8fXrVM9RxHMk8G6eDe/a
	 UL6j6vz4JPpeAwBvWYlaBS0nfFAiJ5HTVi8rldin52B4MuVUCkU3JUr+XzT5rkq4FN
	 VsGezDY9CBHIykrAD3r8V145aVs3igDI40rjrmicwzzTQlf9I7zuC3B7yUsXHHIlR7
	 CERmprjq8ZKFyi1H3q1jMfLo8XNvLLvX+s647n6pXE88YkTFtnJM1QWZ+cGxt6b1U8
	 563+Rg5EWXVLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C39BECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 08:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166167365234.18815.18424928157980919983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc90f1320d71f4c7b60c543ccb7c2b696f98ff54564d2023af73c42e26f6987a
Date: Sun, 28 Aug 2022 08:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661673652
