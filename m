Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA5A2D049
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+a2Mq/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80D69C433C7
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698326296;
	bh=fadARpfzw6rTSKt5+Ey4u2RfTXB6CWwLM2Daowou7D4=;
	h=To:Subject:From:Date:From;
	b=Q+a2Mq/XWjnucBcZBzJjtyLqFtCGUXQdruT0JaGuT+WPlke0XeeRETECYKOZCv2e8
	 6h+DgRz9IkOHXo434P/PBJdDmpSBg2hh/mvYSGHX2pSk87G0chxxkFNvUnVGInGy6X
	 aT+Q73zHDG1TO0DBqtwiwBoosS8chrDDquYeaZn4TIYsQjy/92gIgRs7zfFoZo9TN9
	 xI6TJEGrIKCBWQd1hCRWy0GsWx4vzURikqhXbfYeoh29QnKZDcxAgu/lvIWYMfu1X9
	 HRx0fbrgxQSDezOUio7Oy2kN4sRVgo82vAzw+m2cyE1HVxuJ0RBoAulg9jTaUFma7L
	 J6W5EvzWAxJJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63BBBC25B48
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169832629639.663.7720346024348594615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10f6b6a42844678746940688f817c234f4ce14b8b32bb49665a97f66ec794870
Date: Thu, 26 Oct 2023 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698326296
