Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443ED7F0
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 12:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F27C433EF
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 12:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683895505;
	bh=1zLt6LUvqc48PCmBCmp9/3oVHlvhm8bpRj/QQn318SI=;
	h=To:Subject:From:Date:From;
	b=Te5/y9cJgPwsbDjN25Ey+jgo5Xc35ybTQim12kPpsj9t4EzxcXZzRnH2CYoNismuu
	 gpeYIMdFDB191cJjpYrzJS/fxfjvpXC+zZZLi3q/107mXNsTcBMnz50/7I0WMcJ1ZC
	 XQFuOaxSC5AmbeY6jqyqD17W+wMnxihO8eR2mIYiPBytax9ky0OySVmfm9eh7oDhou
	 VzsMLFt/fsTsgsmodBKhVTxv1LkF6930wQhQSfurc91SmpJ+UgSPaKspDkbM9nTqzN
	 Iq6OI6YNR1r4qbmkzpmy6OqXak7in62pZzJeEgEwdRqUSTDK93jvuU2WgE/fwrAS/e
	 rrev0CIzlSfkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBDC2C77B75
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 12:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168389550575.335.6008016005100608321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13523097bd1535210ad54598d41123619e079145e23390a610878c0f575b1146
Date: Fri, 12 May 2023 12:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683895505
