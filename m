Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD7AD7B
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64CCDC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670053854;
	bh=RK5AF07QH2scJUjqUeJQKLrVh1XiST8D9HVeqobz9Qo=;
	h=To:Subject:From:Date:From;
	b=MbjXF+0kiBA6/mNAz4cOYrMbXd7PcAhOYAoocfQoq2W4lUZ4SpIXDEyBwuwSYrkqK
	 +jyDzeG1kjgHxU9kTZf4iRml+FI7dhb1zSKUi9jKSqTmUJNmluUYSMG8BYKtJaDVdd
	 UVbGw7Dliy06N0q8Z/u1qhU7tUWvpmN6ZOfVXkDlTVDUfaXgOQdG5VgXzAgDGwXVYS
	 o6XXwEhLLNlb1SEZk4GqKIBoDcFFo33RHFuVhoOt74cXl006XiGhzRssDj6Puk6VYI
	 +0tiz96YI4rjBV9T32JWrOZVbdEHvXDYmdElMz0R/3npH3w/3RdzGNdxLcVo25zim2
	 qjK9vdIv3Jf6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50951C4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167005385432.26960.11292844997502033633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02224ca9e35a7de27c5a109fca81e5fc3636aa936859f7029ca1781f79ae217a
Date: Sat, 03 Dec 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670053854
