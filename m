Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C3F2DD60E
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777064854; cv=none; b=DlI2EoOGqOGeYmBogeQXj5qSEZySe/wZsQ1XhN7L1UG4rVn7GTujb8L9ntvrjZUxL1Z5bbsWRf2GY9CCj8K7RTqjxFwK9LJfRmJBLHZnzwtyExld+U7d8z0hgSiCyXWKjkGfuK9VH4WAkUmWkQpWtH3En0LJK8Os9774fn5gggE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777064854; c=relaxed/simple;
	bh=XcCsE/sFgN3Bl5519q6CJHiPWGvqn+fTbzKKstjp1so=;
	h=To:Subject:From:Message-Id:Date; b=AWl/CZCcbZYaM5Ydg6NQbC321UVd0TFgS3eVSmF/jlmSE8Hf2J31WB2XtgILP+Wsn07272lQpnHUUZeSY6ed77p2C4/YdeB3FiNGOtUtww+EA6gR4VrdDCzMB/5qgVpK/o8hM9lq/0x23udLy7B7iLY5rU6YsDPA9CI1xQl8Ong=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaP6IQ5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaP6IQ5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9126C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777064853;
	bh=XcCsE/sFgN3Bl5519q6CJHiPWGvqn+fTbzKKstjp1so=;
	h=To:Subject:From:Date:From;
	b=EaP6IQ5WV3u5iO+yYHGTsVItJKQqApFQrxA6c0AKMxk3Vq+klu6KhSq5CW0pAUK69
	 Ja0gZTSHR3oi8fV9A4HluehhAvcxt/QE+vOQUJJDlx22D98MhqnD6gDqIrWnJT2OAp
	 bVsW/BnmO/o15Vf0D7lKFDB6i+izfyvYzHjkhfd2UVXP+w7Q14zKTJiu8KAH3J7AGJ
	 qrZosEUwxxigkGSWTb3SLnPHGy9ad5u68yxspalR2U7V0B1eRiyPTROXzLWxgdouTB
	 VLHs4xBa08Zespvbd0/MkIds/VSaOvjCgzMJuZZKr+VxISzeRG3wfVAiQYuL8FRV6X
	 HJne2YIiwI0/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA142FF8849
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177706485368.15353.11425864496671736784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f99ec8ed811977ba74c21b6adefc57a62484a41cd47925809d292c4196c3d8fb
Date: Fri, 24 Apr 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777064853
