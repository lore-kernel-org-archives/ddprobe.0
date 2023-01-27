Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E2C7B
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 05:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C955C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 05:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674797586;
	bh=pX6JvQNlW0dX6Obyd2kR4dawegf4+2LkzY/l01Mm8BA=;
	h=To:Subject:From:Date:From;
	b=Yj3tGGbxky/a8DRMKa7GdjkomQK5c9/OIqxLRtVXXo9BKuHSEJvh4TlYATXmZr0Wl
	 rlkPxGf3MHm/mzDBWi+UkfzvJvbeZ6iNwCmXlYopLHbLlKMhgIqJ+EsgN/ZSzguRdw
	 TMVZiij3QSz4udqarbNsZ/cvBBVP57Gz2qVN4MuJdfV+3mcqHsxU8uHHHnPJnjfqo+
	 pY/vc0CfO5F3AfNDPqO5gjWIcOGG5xUb/kVBhXjgKCdKGSVmHSFbcDKusMDlPgfPQo
	 Aob/QXLBa4nAqT4JAJnf30QgK5xoFQLpL8uECqaPRastSBFNvo1mnTxTFn0iCWxMMd
	 6MjQ6yxyUAUtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC748C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 05:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167479758588.8755.965554247563410354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d9ebb12aa745c5db490e1ee42e8b6f744300f6723eb80c4bf96a0088c825cd8
Date: Fri, 27 Jan 2023 05:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674797585
