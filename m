Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09230125DE
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmgUZfre"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F5F7C433C8
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698079696;
	bh=xVnc27rr0wJUBT7yOtfmaUQtkfszgnSF1Goq59R/B7o=;
	h=To:Subject:From:Date:From;
	b=VmgUZfre/SpFN2tE5g0MlJUG3M2SfQ3DrfjMsR4+wg2eUBmFaB+dhkCjdV4rXb+c1
	 EwUFzu11VnV2FczolsW3DsNjWkQ6mcA48JV7pek5VcAAWPtZ+RpOUiXqKcMfk/P//v
	 DpFBjsrrih5NYU7RBszS7NGNmHJTstPYavgD1IPTWCuhhnk7TC/5WR713xCowtSiGI
	 8J3X5o9iZPuUc+cXNK94ljaPzUZup6sZXnRxChKZQvbztY7+LeKTR2PC7FpmSMzRvH
	 PTVmicbJB+NdTzWN8UxQiLW2kl5JQg/q8T2dIPrLPzJMBJo+OF5stfOa+G2S8m4Gn4
	 ZXsyOGqHSC5mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63050C001E0
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169807969639.1813.12090997691390478983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c47d5d816451e6baa57a9f419a6c9be501f94631791eab14331336871b042b41
Date: Mon, 23 Oct 2023 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698079696
