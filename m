Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68CE81ED53
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 19:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7527C433C8
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 19:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689278348;
	bh=BTZ+Ni4z5kKm9HxVmcy096CsY9kyb5ZHcvgZqugPFWE=;
	h=To:Subject:From:Date:From;
	b=cm5SGkpqUUAmejN+hk9e2O/94HOzhO9b67vtWrmca/GKZvl+HDtllqQfMhiIsYdLV
	 NFt1L9wMjY7hKzwiVqoW3q6TK/E3d7OSt/3hUjmUL7uUHu6WoT1TQhLnti+m58VTGx
	 XwAzdw0ak7UBWxYi8Ic6AoZKpj8zLFVl0tEqHQglUVaZX2Pp/37R5nOcr34CTFdI8P
	 jhYWCCzRv+T9PlXMj3vEF014YEVqrzyNL8wDR7FRP6ZJBytd34WoaHavNsMt4hxvlh
	 f0qMfpuBJreDxligRyDGyI3qacx8yA6HkSWgNPlgf+MZUfCKjgt0aykHxgmyRoXtNC
	 L0YznrWQxV/PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9444C001B0
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 19:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168927834875.14656.11098387414237597606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 353f4b882f50447715278428c6174b88a17e0caeb570b806ae1866b7d1a302b2
Date: Thu, 13 Jul 2023 19:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689278348
