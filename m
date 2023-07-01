Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52C67C8C0
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 14:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D91C433C7
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 14:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688222648;
	bh=qFIOmgTfXvOc+IAfs8tOFdSZPUui4lbsUoz1ojzaHm4=;
	h=To:Subject:From:Date:From;
	b=syemeNofpil3McuTmZ7TSrsRP8+FTPtOx3Zb0eg4ZKXLVWn5PUlBLMhneBF3DoYLk
	 VSXAlGehoXK25g83Ai1wvoIxpVL+Scz30PhI9uLaq1wTfSdAQAal3V8vEaiD2k8fWQ
	 DkO19S0vvaTffVu+JUg++2nWMzuy7iAyoywcIPpFSK0USOnFi1gJi3DG8UwEeyrMlS
	 H7EXeLPE3NTGs1Vw63ATkWXHG27qN8eyhQHcMc7zjAo3QcHXr+d3lHJdArrpZIiiPH
	 7iXAZ0C8ZGzsDXHBsa3VrQAznsOazzg301l+/xaC/SpiT8d2AWaO+JHl5Ri9HNfJDs
	 SBWZ/cTw0mFQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB591EB64DD
	for <ddprobe@lists.linux.dev>; Sat,  1 Jul 2023 14:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168822264869.29699.6997008074966333343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5528671fa7a0b0dc8d19a16a01a9ef7db189cc7255d57473fa72cb35eb754b4a
Date: Sat, 01 Jul 2023 14:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688222648
