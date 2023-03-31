Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF1823BC
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 09:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCCE0C433EF
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 09:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680253865;
	bh=mbsLlMNLNeohCU8o0SCRX+vXkRs8Cs5cwCm1/ej64G4=;
	h=To:Subject:From:Date:From;
	b=PD5wcKObvR+HUW0wcctBysXtn0BXQwYZtpogwovXLVfoyuKFAB/E4X1A4ZotwcQyh
	 TzREa9dYXcAHNIBgdOnPK2rPtY970wggEktOhKQcIeKmi3gEfehT/+r52RBFMURl71
	 I4Z5xpfJaaS9TxxdSBZAAxyU1XoiMIwXiJT5UEW5QQImyCG5axsB3pJi41nRAeUEGH
	 YSkGWH4mw6MsiSIdgmrmoqIxBtlcYvvetbI5Uf2HOw44bGBMO0b1TK0GPwtxnJdURI
	 60XGaFWN0F0aQfKhbmIwlWbzoG6EI8USd2ACFywO/DUwP1+9p2TUeFFk0BzMnn80hy
	 FRwLnmYuBq0cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3994C6FD18
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 09:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168025386572.11530.9423213718092781341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4d7dcddc92d7b923fd9399a31a6c8a8efbfb1cc3748121da58a751a48252b72
Date: Fri, 31 Mar 2023 09:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680253865
