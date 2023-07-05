Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C301186D
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 07:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C83F2C433C7
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 07:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688543768;
	bh=zQpRBNacWffY0uD9gUIlhzXY/jTmJV+MUhc5VoYpUYc=;
	h=To:Subject:From:Date:From;
	b=aHtY8z4L7A6b431IVijQfHQs53t5wzDTqhaFqR80Ys2o/zUF0fZKcDb/OAKAl9opn
	 4KBb3xPyxdjn7DkCrI0O55H9AZJw0JVKzTApxRPsiuoema1OVlyLbx10q5/BuTByvI
	 AvdV0L5iXwxFq9RWl+WvozWxY2FDCdwH7LLGoPtcwYsSSFXsX9Xm1KmJZwi4ctuUN9
	 1PFudse/zw7zRzNjU1tTq+F5oyWGjs2riU9sQo17ud1v+5UWTFiDnJRHbEYNCzwTno
	 P/+9jcKbXBa1cTxFh40OjFv+/E1BZCrtz0RUTf+lcTWYtc/A41M0ltFNQF8SHRdmTf
	 ZktdyulyZ+dcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A46CCEB64DA
	for <ddprobe@lists.linux.dev>; Wed,  5 Jul 2023 07:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168854376866.32039.2037102043742451986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 141e2db1b51292058f9ae390e2c2ff07f792248f7578f3f4f4f52ff27ce980b4
Date: Wed, 05 Jul 2023 07:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688543768
