Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB686D24
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BC25C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670611287;
	bh=wayCcpTIoNKU6ASwWriPWhF29cJN/KWu+8ac50jOMtY=;
	h=To:Subject:From:Date:From;
	b=luCh1C9r+kw/WRdq0VbNdxBzlIbDpN00hi9Bib35WP7yXJaeOjGBHrTKqqRtyqk3F
	 7HRN5lEYgqwoopDxc9tVrzinVH1hwN3idkcouC+I046hfzFjfWLfL12NkR6MpEGMl0
	 iTjzHYlCFt0cOS2kK1FzunEX1ur6M4GN8IophGMtMdWR9MIIDeXGrq61Yb2un+bpN4
	 c8+iwilBYZZT8a2sXgjPokk8jUKngovKJ2yo4rweq2+lr8VwmsYkRBf0ObdHNN8skG
	 IWw9ibbAE4S8LBJCdr4AjJOST94p0rK4C5/EmKvn0cUIdx/ambGovR0l1o6Rncj0O3
	 3QwToc1/zSWug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63203C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167061128739.11481.11584333848063511076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e0f7afcf50fdb464f08b96128d386497869623a79d337ac84356de4fe1a3bae
Date: Fri, 09 Dec 2022 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670611287
