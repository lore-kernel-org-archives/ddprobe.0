Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264DF8BFF
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 18:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718562503; cv=none; b=qcOMBMFH7LAxCzA+pG65nzriY5EE3pXMfO3zh6jp4/zLRm1mstcd9Py0GptsUXRmsqhN/iORhBP2ylzq5zZ5m+NmloaEOy8buC+OGWkFkyFFCK8KbfMKJrG1Oj+2jw2/RW71mg+k/W88Ey2SuHg46IBkHCqAwj6d7D+xIavK5Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718562503; c=relaxed/simple;
	bh=aAsn9Ldbt6NvHl+mFnKA/1gDib1zmj118DUPttcEvkI=;
	h=To:Subject:From:Message-Id:Date; b=WAm9DvNObEwgVq1LB8bocoWZsiosNgZMQqBVZKtqnEpk2+S4dlgYaDtb7Ce+wMWHI9UtFTQn7/QD2wDWjUdaTu2ngNZXXL54hrXIm06yS6aMMXwp7dABwpPhfT8ZXyx0ZvQBCR44M/jmzZ2yh5BwOc+xhvWO3E4e3/6ENsHQ/gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bfi1bBaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bfi1bBaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0017C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 18:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718562503;
	bh=aAsn9Ldbt6NvHl+mFnKA/1gDib1zmj118DUPttcEvkI=;
	h=To:Subject:From:Date:From;
	b=Bfi1bBaUIXol4JNiw+uPOtJ65BoeO8EKpaNFPHFyRAwfSFehFHQp/i2EdzFjv7coz
	 WfTF+4o1+C+wnWa3gVWHeyF+cgVMKjl7Sj2eWdV1axET4ZJrdUhN1YMt7ZF/6lMMmM
	 YdNydHHNU4jywbCVkL+X0Q/lC9fsghlf35nJc1ahTs80RzvM+HsxRcKUV8DPYIbqdK
	 NyAb912VzTvJBICGvFkzM9YLktrxROroz/Kp1cRbo4cR2O1Gmfqy4LO7RosDvxzebE
	 LrzDtTCtp4GlzQnHJ1v8W2yLrIwUrXYNR3jT31SEr9f9Ww8ApXUOKwioWNCK4A/qrO
	 eRFqcFnefLxkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D898BC27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 18:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171856250283.22945.9398070341950089956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcc421a8bc716b23716ae7f29b644b30c87f9c96131b412740bdb718ea78a959
Date: Sun, 16 Jun 2024 18:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718562502
