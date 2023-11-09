Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB5138DDD
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 21:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8KAmvGu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96C13C433CB
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 21:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699566496;
	bh=9aPc5RA31Z0pUPTGHz5Gspx8gd2la+5/Of+8nTC5mto=;
	h=To:Subject:From:Date:From;
	b=q8KAmvGura5vjUX51HDjYhFJZBOJc7AuWjvNCQF9fXmilgkHh9EE+zPEpf77jRXfL
	 iv0pJInmSpxfpH8L3gLZw0o9Uv1oKT2mY0N0S5Jfao2KcdH2FcN2zn7HHotoPyfXdc
	 kWRwRwot52STv4f+Op52+MRYVjzGKA5Loyy158ClYFrkae5H/XKxGZkQc8nxH1rpO0
	 52cXnnIUcPydG6+cZ44jA1rLfy9F7ce8VTlqsedVOh3hqTSRNpHkfKWmh65wQ0bBxG
	 5qUTV6HWe8TkNEKFsCgjJCPxR9ehC9axO6AeCT4r/d5BTHoXKeDwm/c7q1M62cZI/y
	 OhaEFsNpGWqEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7991FC4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 21:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169956649649.3455.2678446864885965361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e593a89b7caaef6091ca4f3a1d2950eae2d564c6a0a0a199ec32bcb251a86a9
Date: Thu, 09 Nov 2023 21:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699566496
