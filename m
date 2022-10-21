Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBF907E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C404C433D7
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666314653;
	bh=OZ2zgefR2uGgFrzFs5DngIiO6KHgTbWRwRV/aIZ1nXQ=;
	h=To:Subject:From:Date:From;
	b=L9dV5KQy4jZj881kXjk+hBSXni3Zp/YGAqNs7W3qOsqsSrml2vTdqkeTbVER/11sJ
	 vmC4RLBS4D0bcQKwQxFfQJ2rYYe6NK7l6YzmCU1noMnFeFglqgVf9ZxH0VsvyAdq7z
	 oIcIcAmXEDTjiGNMGRP9Y3ebbBVwtM5MO+YcZpTePuAYK+H/m4jqRy7s8g832dfend
	 /YSTOcj0aGa5N6MhR8FDA1TJ+LY+9+qPYo2KbNLAbBAdsykoGOBqZnD4R3kPwM0xHc
	 +5w0HE80pNyJXvdVnhXHrwjxIdLMkPGuQOQMwWo/JyZgQN7Hpi5+bh5RfK0OxFDNKQ
	 HZFKzZ6cjLdpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52523C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166631465333.25207.14525155888764739837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69943c875742443756fad129d053d910692fff34bb1a0a8b49146d4b80b01c6
Date: Fri, 21 Oct 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666314653
