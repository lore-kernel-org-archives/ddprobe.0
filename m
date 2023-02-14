Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466332CA5
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 21:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE083C433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 21:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676410625;
	bh=XE7/5KHotDhBx8Yxolgl3YzT9v5YarURaSDmeGREvyc=;
	h=To:Subject:From:Date:From;
	b=otLvkanoD3BnjzHUIBpBAxc8GgroXYFOfxmeP0vnNyhZ5Fzfe1b4NP6cU8FHV8Stz
	 7WhdX31DRsaYn2L7HHTtbza4uqecqYWitZro6G3ZDtb/5AVxorBB1qCjXO5zw15N5+
	 XXk8HMqJbpfIOSXkvOI7mzGeZKtAi0lPtThNeTrCJWFK+s7P2MDaMaJ3UrR4m4+gNX
	 KK4cJ2qq7/JI9uy4RteoI7guTYFAtDot0LjYmxmU+HQjvvaCf5XSpDlWRZJnqugd6K
	 /2IXcO34FIpZbVmqj2KXzKLdOUMJmoPnNJY7+wihMaZJEosEx4e6q7B4SfafejKhwR
	 8YgX0PeL6K84Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CFEC61DA4
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 21:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167641062575.1385.1958965214894965723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8926d6176e21b432af7447e77b798843bf3e32553b230acc1fa4d3aea7fa587b
Date: Tue, 14 Feb 2023 21:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676410625
