Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E9F9101EC
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zqu8mYBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83C3EC433C7
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698848896;
	bh=FH6G8Zu//daWkj6j+HGRy1cOgmntbq5UIYEe+8RoICU=;
	h=To:Subject:From:Date:From;
	b=Zqu8mYBb2tjGT+OJ5g5oGCRvdDjq+7ANciil1ZF3IgJJ2oN7JcCFVgMN1ms0kh2qO
	 h7flSXXw/KEKrJSmsYKU0QO3zAMw4tbGpotphDPDjnfLQpjdZt+Vq/X3wzs6uHP+Vu
	 bUFYvmMHcXY3dZ4xk8IOGO6gwBuERq9NWQJhOYalFK8P7fYzv/E0a7t1y8Tx9V4zhF
	 FDbUfK2UoQa+VVJPIxc3L+u9PqSyehPYFdbbg+KNCeJzhIDRHA4WqeiteUC3HUux6g
	 JCmXUxUQwth8118EW1gtOiHRoeioq25LDJkHXtn12rmi6Ud4IDeixUn2j/0mCRGk8J
	 PGVEXQttI1lDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68D17C4332F
	for <ddprobe@lists.linux.dev>; Wed,  1 Nov 2023 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169884889641.10089.12878137217981566106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2f6b74359d25b77428272c827472c40dd3184bd0f081a82ef90924dc341206e
Date: Wed, 01 Nov 2023 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698848896
