Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C298C7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 00:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72815C433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 00:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668126054;
	bh=+nanH4SR8/M+Zjc49q3KbjtpaRtoip0jmgSm2ARHwnE=;
	h=To:Subject:From:Date:From;
	b=GjW01usrjbvpJl5J0eniLTtEJC1GOHYmneegCC5pAEQApYjlhoXJJlFBB9kaCEWVZ
	 TsZacqz7kZchXU9L/mOqD0sj/KEPy7MOXY0adcxsGpE05MGYbk3r/uHFAAYRGNoKda
	 n1wonaD17hma3igkcjA4YkieIR5y+uIY/O95yMyBYFAx8JFCO5WQWbtZt1ACnA1G1Q
	 L+Xe9zI22rhmmDClNTWqKCkcI5pg5tQmYWVXDvfpNLAWEIxf3vMSq+JuKCXtjZ+HZt
	 pCg6CCMcf6CYE9PZikZbBoXWDJ5y6AUTATHRYTs6n7HeI7BRQJwjS/6WI6EZYEwOA9
	 ueDlH62Ww/pOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A52C4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 00:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166812605434.32431.5035194194460610394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89dce15626d856cf8f0b24dc6f6a6307c17edae7b5b2039e1dacda348ad8b19a
Date: Fri, 11 Nov 2022 00:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668126054
