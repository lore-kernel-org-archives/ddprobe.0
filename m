Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C21A32
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 16:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF0CFC4339B
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 16:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683909305;
	bh=efOdEY3K0oDNlXXuJSPj20ebTZJtAOxLLGsUFV8rtSw=;
	h=To:Subject:From:Date:From;
	b=A0Q4yWNrwftK5XuF3xxGJMKH9PhWt04ujE6XqEhja2I/lDChIhYccRH3BBwxI68Bd
	 6+pxOlu83hYlu7ak+Y1XGLAQp/JNO6Wr50ytDzrD3JuiRDy74OBH1FfuCkbp6pd12I
	 cPi4DfEmMOvzTZ9JjhTjzCPo8pNsfCi6KLuQUoKzJsaSfHanorXmAhUHFN0ssHSn3j
	 rY1BJ7EmJ1fhwAIZQC+xnrGOqgsJ1NZrWq+S2hsPiTCzrwlhmvdF4iI230TPVDVHij
	 rbJK0Dxhg43DW+fUcA6GDKWKHpiIkofygkSbBse0jklXZFIkjg2i7brcsC4IcrR/Ss
	 dLukmBxG0a+cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C46ADC77B7C
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 16:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168390930579.6501.12426494566895770119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a62f5f81543d81e54855fce2f789c09b6678252ae9ab6b3a160afc9c3bca5f
Date: Fri, 12 May 2023 16:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683909305
