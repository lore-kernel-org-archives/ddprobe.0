Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D49036E484
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772910294; cv=none; b=kG79OZQ9PncBcXErsfbAKXelIjrSdvlpMAYQQEc8z7uC3EzlW59ooz5nvBRNVXg652CRoj2XynUMjyfMwwhOr2/Lk/uCSYEaik5yLWqE6/KipNamnEwq2y+jAW9p3tFK0QzEfQlh8gdaa53ITpBqQgrr8dDSKxTgxEUYgkjz3fU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772910294; c=relaxed/simple;
	bh=8I3pA88CcYHE28dImREdY7t5gmsFMhqWKmK8o1o4Jac=;
	h=To:Subject:From:Message-Id:Date; b=Gie/hmUcvDgQ3q8eoiY+o5LOmJrQcaWXB9ZidHyP5EmtRdkvh0KSMUoyS1BG/TOHH+4jNVqutq7/9zKECdnSrsvj4Cbk6zUutu+FtCqZx5VsUlJ7NXgqO1guxuyJ1B5EwKnDDXGvisGKS5xmIYgFwrmw1MwzYDOZo6oSwB3vl8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ija2kZwe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ija2kZwe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7254C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772910293;
	bh=8I3pA88CcYHE28dImREdY7t5gmsFMhqWKmK8o1o4Jac=;
	h=To:Subject:From:Date:From;
	b=ija2kZweipqYNnS6h6FODE0Hu9O2j4dBW0WFSl1wwle8fFK8SLUc0xkaVmVqE6NXH
	 TZg2qxNU8Gw/QOSqMj6uhNqP++Z1aPIloRnVOervG+7ZE6HRNg4vwLWM1Vbo4JBFFF
	 MIKs+ukOVjgKBtH6NEb9KLOAwILSff+dlgjgRjT7+tUznI+zxkP8gfIxqzSMgd0tws
	 RSac31/nWlvMgv41LOtYqTOKoVQO3fomM3GJjSoIWbHv+gfjeIylv0TwaEz0ZrsRgP
	 f7sBEiYd+h06cGDr1/0SIr0Ct51lw44AChVr41RLJvSNJ1hgxX6k6sEOMOg1Jd5BWP
	 c7+gxj28KJlMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934F5F55105
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177291029358.18267.11571024366269553639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d70e95783a9fc217d2c0afa949112733fa16e872c2269b55954381acccbd46
Date: Sat, 07 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772910293
