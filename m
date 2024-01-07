Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF5F125A6
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYcMgKTN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87DA2C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704668896;
	bh=IMfehoFCUkW2p46ms8xJ9eA5m2qMb9AJF2fK7cVxwFc=;
	h=To:Subject:From:Date:From;
	b=SYcMgKTN/rXwt6Sj6xljdoyvOeD/ZMyBSOFMbUZyZNIrpfFy5XC4OgVmkFD0GYbxS
	 AVzi/47p/lX+Yo8zlWION0de6AAN2cFZvXOYC/J86z/1JZKTQG1aoetUd9DqcnBXSW
	 LLU8PjRaGdpZIaBJDz42csn9Exv+jWeDSAdbov68ETqUC+KT4+LIYoewnlLtg18XNE
	 +Uj4RrLg4L14HIR8QxVcqq5rodvKJ9xEGDc96LgrdfQrh9xDKKH5jW+xt9ZQ4TpNU6
	 /DsIjhYNrEU4gdXdO19wvTMIiuf1IhpStNy3Kf2CO6Qai5sQfr8lVhcchUQ/wpPXFZ
	 IjMensv/UhKHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 674E5C47073
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170466889639.6813.11789203392168236889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c8cbc628b6278954fd31d7a0ceead63bfd2fcfe34ad9dd5349e71683af8f223
Date: Sun, 07 Jan 2024 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704668896
