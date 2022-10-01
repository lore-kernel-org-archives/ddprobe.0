Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C378528E2
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 15:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D73BC433C1
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664638853;
	bh=AoFQzT7ei1ZnPz5A5r9VZ+HkrmKPuVB53GJS66wRRAI=;
	h=To:Subject:From:Date:From;
	b=XrvE6i2ADGJcIoQ3XJjnjyeZEfAROS5KiwsAMOXh29cOCXE7hnyJbB+kbQ7a7EL32
	 xxWZWbjdR/shfzCwDfPrFO0OeEr3tMa5LiMByA+sBaWDjNNqDWljn2VzhCGu2mAJeJ
	 FuQxvEcwfEGwoSQ5uiYsJTwKMJzha22kkG35PRzlLBtWbY4jVnLGxPsGmf1ZNFf6+Y
	 hj6DodX/RrUHRWkjDWEQZ4gW1nMmE8fMWGSIwtao0fETOEnrZP/yFtwAGXhAhvtl0W
	 6BMQaydkhIPrUJYzpgigFw5pLs84KzX5zb/EwdDGASOV4byu++3fDCaV4YvFpAaZYq
	 heaBm2bZP4y0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 509EAC433FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 15:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166463885332.27933.13137568315265934816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 078a8e3a6a7712f4e10bbd87413aa331009b89f5ed8599f31247b4d6a63984b3
Date: Sat, 01 Oct 2022 15:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664638853
