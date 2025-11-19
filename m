Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 980EB1EEA49
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 01:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763517114; cv=none; b=ENykAKkY22aIn77ekd5Ts/fqRMWQRWiAX2p5IAYtw4YqbciLDEyg+A/rlg2c55Pml+oUudXa9409LoaFKd+rXZp98VWGfjx6YhCbH8/WzcjXAEmOpBq1D+BHQ6HIOjUYJBN1yc6ptd3+ayyPZjZ7XAge3tQ3HFAF8oaPYrnEZxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763517114; c=relaxed/simple;
	bh=XbPzIurRX6YRCE6myrzccmxlNkRc1xbLlHCUwNsfWK4=;
	h=To:Subject:From:Message-Id:Date; b=YQsO5lV5wHFteZzyB2FEj9tC6+sZAoOFlxbmrcAQik4tlr5mTsxH4kmemvS6tTRaOxrfyIieY9DsQdxI0m30LNrS57xstVo1eP1PsQQCkRRE3J/8qpbsHJkEpY6YnlJOLgvj44gxRyJ/tSkIPIzGTIa3MJhkL6ZZU6z5s7wGL/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+FfaJPf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+FfaJPf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9540C2BC87
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 01:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763517114;
	bh=XbPzIurRX6YRCE6myrzccmxlNkRc1xbLlHCUwNsfWK4=;
	h=To:Subject:From:Date:From;
	b=a+FfaJPfoBayqHFSgFkkmDP2YMP+z5eD9m4QyYrT4vVp/FxaEajktXQpM9wyX8RMG
	 USKvE0QNBh4UlFzsMvTsRJatKULvxlyMNSCtFlxQroMNULjjdMCAvhJefuZtFAZqIp
	 uzP/4uZllSaT5Wqy0TQxs6bjVNSYg6BYewdccBotTyOaDPFA8GJLxhaNwizL6etEtg
	 H5tYjhp7O05jjaNDfWmtaz2l0zZAghFlbB50kp7eWe3VlS4kavqQI6Y+aKWpT5R/Zh
	 aGpceRcODUqorHDKkDE2/5JiLYpccyGpJm5s4dopUgwF8tkYboVibU2tV8OdyL5w9q
	 u2aVi5i78OkZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F3FCF2569
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 01:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176351711358.12365.12553002454165958240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15df7c561267876e900b14f0e48ca28ad1a6ce1e22578ca576710ac119db30c4
Date: Wed, 19 Nov 2025 01:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763517113
