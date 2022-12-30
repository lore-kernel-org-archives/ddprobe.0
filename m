Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAD071C04
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78804C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672373487;
	bh=XvLIo8RmclHhbGiPTfZBayj21jqwuzGT/iVldTVgnUE=;
	h=To:Subject:From:Date:From;
	b=JADiXsETXl5onfmFyAwaT+LVK3T//MtBjgvRjmQabUEIsBr/gGZOF15CyZssBZyQ5
	 RqvXinA9N7j8yAmjICPTadVwc/DCaLiROjSwujQhK+D9XwVHitmST48GFnbgeVyfXo
	 aCs2VCi4djnFegupH8oryVOarKOE4j5LTKjWqaODiqufXUdKgj5LI5+xhVZCput9P4
	 h5xL/7JcL04Hi6lN9nqmEa1pUnjChKuGC6YrMaZTw8h/G6fCOvASWDBslFdVwFdF+n
	 J1d7ZyLr9elPjEM6ulV0w2HlSWq0/9foA+mxh+B/GRYJsYHYF4f9S9Hpm1WyYKGlXx
	 ygxcdGCVGqZuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 610ECC4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167237348737.32274.16645244703295337865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa13447a25848bad08b82add040a22b868a64c9742e2b98ebd3ae415d23a1163
Date: Fri, 30 Dec 2022 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672373487
