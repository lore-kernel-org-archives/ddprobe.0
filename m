Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E800F2232A
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 19:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvJUzoRu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76F9DC433C7
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 19:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698781696;
	bh=MfnxZ6ZS4UZ7I1xLw4GRScozHgzrmlF3SO9AYhYBdpU=;
	h=To:Subject:From:Date:From;
	b=UvJUzoRuwzWoSkgF8IQGlRtcoalVIaoobi9nlVwN0PDSeVXUawvndz9vg3U+2tlP/
	 w4CCmAaFu4m7ZvpHP0eUuf3qyIjluXPE4j/Wliff3RwMQoIXORh/72U5yDnKfari//
	 Op65HllrhimploMxqEPBtRfmre2qySgHbJPFiIhvkkgTEH2V1rufzvW3YiFIP1V/Gp
	 rHkqnCqukpXPcP/eCZ+3OI3yNI/5iJAYc8j58nVuxGLl5yOPfZ2a0CZKAC99tqP2Fh
	 8FZ9iKWlsHkcUc8jh0KiRwhhCEdPwkJDQHR6YeG3kXfTGLymxwnH6ksL5uECR1Xumt
	 zkuZQjFsQaDwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E4B7C4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 19:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169878169637.20452.15494927002649610652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc123cccf3a455c79fb6d2960bfc31d664880892504dffa8890e760dc255b5c9
Date: Tue, 31 Oct 2023 19:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698781696
