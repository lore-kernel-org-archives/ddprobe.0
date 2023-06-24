Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F245A953
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 21:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF304C433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 21:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687643588;
	bh=5AjZHRMHRRwRApxsDhjfzCAZGqzXBa+USH6S5/yes5A=;
	h=To:Subject:From:Date:From;
	b=P3cbawMZa9f3YAtcdxTzYCvd8f95yQOokW47vtqTfXiMiXqoAm38yLjpBgfqDIQ+j
	 mTJkTp6J0BCWFlUvpJ3858oFQAV1oFRqEG0i4eUlkd4jLae7Yb31rciBBH6NoEVzph
	 RQzmdXDIjr398aJa7Qdhbk3CTfXaECJv30dq6RwXM8nVPNM3wVv7sge6VjLTEYcstb
	 Stph4813ysPoSaOj/E/Z3vcKStliJ4gix6+HBILXIA1+4kzX+G3iY2KsTUwbw2C2yK
	 6hoO2UWYggsTgcwN0qkHydsDRzP8k51Of2C+5Ecj4L6ZrAp8ALezPV2eYVlVCUaRCS
	 OwQ4K71h7Ut1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA44EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 21:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168764358867.1958.1660173074192537210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82414490cfdf10d8482d632f128a950fb7cde9063c4075c31a04ef4a21e4afa7
Date: Sat, 24 Jun 2023 21:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687643588
