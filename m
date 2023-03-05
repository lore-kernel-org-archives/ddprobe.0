Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DEDB15AA
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 00:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1A6AC433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 00:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677977225;
	bh=iCMQ6LujgpaCo/EoLexB+xf/lqiMyyttwjsVIcDUXL8=;
	h=To:Subject:From:Date:From;
	b=KXjzaEhkydg30ICzDU7CvG52xAovspVHC9Sy5po9ykM3aVo5Fv7KhHJYkxanaIcIt
	 dr/BDncToj6JU1xp0wPHwZJOPZx1J9e0KYXhsfPEUePe7MShfv2Vi8n/P2+wZamx4l
	 JVYrVvoi+u3gCvKaT3MUYpV+3Ne0Qvc4sTukPK+Rca0BHVa63XGJQzcsQuRNiQZh+b
	 F2HyynpZI7aSjpLItufC0oZn4XNp63zAjsWCs7R95g1V5zDtFqZnTAE8s/yQejYO3O
	 mY14k4oLA4dVkZ8WUtVmhEYwaVP+8A4GPWt6R4RoSYVwK4AM2bmJSYIIldl4xreZ5r
	 /13L1wQswY4dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD584C678DB
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 00:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167797722573.19067.11894315897734572307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f96f83b44a5de34045b3be05b04dc3b05cbdda8546df8d60804dc78e4898f07f
Date: Sun, 05 Mar 2023 00:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677977225
