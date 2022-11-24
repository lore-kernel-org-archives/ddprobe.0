Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA3B82F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 17:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B57AC433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 17:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669311654;
	bh=U2RI2NALi9RbBwLJ4Hf5AtLI/FKPFNbD17rtsWsTwG4=;
	h=To:Subject:From:Date:From;
	b=QDClXxdJSobULMwS5TUKZVVzSpxZ/gctMrFLv5EflLos0aw/O7H7zlngSVomcRzvG
	 W42JrmdEHcwkwz9Crwa47nlDcGglosyYSeqH3eOtXfXPpGCLhnUWKtfwq9XKsdl2jF
	 pJdq4HGrauvPO3ssTKMcCzMH6zHuifX+arUDWuEJnG2jSgobExB9W1yeywIuLGKOtl
	 ap63eHe7xmzbF14aIQZ9LSWXrGQwJl0HqzRMLovStKfPc6QfdYrZOd7jJ7/IEuJRGx
	 mqpTQRwMbkY5yG6Ty9842J5ffSWPBFv+z0khz6boPQt6iI11RgCEzuu6mq4XhuaiNK
	 jROHuBj/abGiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B63C4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 17:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166931165433.25780.15699023822111859031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0bbbda14f30a3f6ed8cf074feffbd2f876f589eebc01b3d53696673f38c131b
Date: Thu, 24 Nov 2022 17:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669311654
