Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603B033FB
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 22:54:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4B16C433C8
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 22:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693176848;
	bh=joeYRxwVYQ+tbKw5eAmRStdlPDGvyeXN+zHx4aPI5pQ=;
	h=To:Subject:From:Date:From;
	b=IKguRUetcOW+iNWFPvXnmV1wdD3OajjIZLMPfqVVUHIHDY6ftvEIgvZzWQZTpDDGW
	 U5Yaq/AZ8KRj0XVzUsT61CbC9sLsegk6wL7q491KzHCkR+mW03IYIvYYzMzkG1oVHK
	 rwv0QUsssmAozF7XCiNfeqtjsScZpWLR4wxECXC1ZwnTP8n5WdsVB8ilJHxb63QnXT
	 JXScDJyWjJQ3O3PMZfTe5VQOTwY6STvqqtTqiYDrgVDLbXF49fX/bTKLX101EfJebq
	 jLUkN6/LHLjmzTD2+UqSsVEnryUxHAhPyMc2f+mduH82f4cWFzm20Wdvn2QxJcBJm0
	 BIlYe5W9u7Iow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8473C83F11
	for <ddprobe@lists.linux.dev>; Sun, 27 Aug 2023 22:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169317684868.1743.11490254482455883115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d77ecaaaf33c09a0607b31718e80f538b58e660c80a5c6ea0eb104b2135d3a
Date: Sun, 27 Aug 2023 22:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693176848
