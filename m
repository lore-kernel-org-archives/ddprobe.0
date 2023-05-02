Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6007633EA
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 16:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7EC8C433EF
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 16:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683043565;
	bh=Be2IpP7/ily4AQdWftyJLE5SCLsv7jer1bEyBVMBcwU=;
	h=To:Subject:From:Date:From;
	b=A8+p1nfZH/1XKWXTa3TlsLLRp3qrMhm+/pxK+g58u/eRcqGsqzVN6/8cAbGWWqRB+
	 4D+XdMOsLv9+uoL7iAcBv6IW2bumXBRh9NdzcgySbVyXPAfcwSlc4WGamIdcvuIkgk
	 LrmIvUrFd6DxsUarAaCIy6tsZW1oxPzU0l4/P/ajAXKQrgaLtT3wVAlAku4nuQ1BkI
	 XmTgQyqQGa8YjZKhphfG1ow+PpeyizK6BKFAhC+EO4NHG3XLKsQ7TsbLkAExCmecpQ
	 +feF5YkaTMkclbKD9nzbAv3fTBvJtc1CV6rp3zZ8Z6bMU8LdvsbcfJSxg3I1R8z0mw
	 hI3W7MIUkHXtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C46C5C77B73
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 16:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168304356579.24822.1290101304600229319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44a9b07bbf79fa3ff22901a26550c45a377ae4092f1b8cec901bcd1a349c7f40
Date: Tue, 02 May 2023 16:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683043565
