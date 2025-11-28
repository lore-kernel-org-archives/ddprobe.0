Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F57054654
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 05:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764308574; cv=none; b=J1Sf/KuUVREIzSJmOUYZq21EWeHP8OPFVxw2OOthWg7TA0knLiUHZLT0WyeG7FlYsWz/t7Z2k2X7Sxm8m0WGSKoig6GTxjUkEDmZRgYqYMvtlx8z59xucUezzPkLmKY2+TQweQ4LCulm4EYbBve7yTZB9JGJov1Lo97JZEgVHjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764308574; c=relaxed/simple;
	bh=mJ5DoPFRxfjpgFfkj/s2JsIz1zx0yQpoeAg+egOqq0Y=;
	h=To:Subject:From:Message-Id:Date; b=u1p4L4XKY8IyDUBxeJOX8pXc6lWSCzpPjmfvyPRxghtZS4i3WuYYg4njYg+xMws/gZQlj1ZPmKhyswfuzWZijpYWZ+ns4kc7ylboCCAcIONlhc/2D/GbhhM6/9VphscoGOHqIEqknaX5qCaKpGOHpuTMg5Vqp0N6zOAAGeapsRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtOUtQWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtOUtQWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8287C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 05:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764308573;
	bh=mJ5DoPFRxfjpgFfkj/s2JsIz1zx0yQpoeAg+egOqq0Y=;
	h=To:Subject:From:Date:From;
	b=AtOUtQWO/Fyercb5ikgl/1agu5OpgC3prPCPiTwLiOn+dkOCFiylhrBhfL4gbUroP
	 RbKbvwKq7I5aCBLvhyZsxg73hqYw3/aaeyv8SyM2t9/j+9mc71Wwx2O8AnKncGmS4Q
	 UuoFK1eqO2VQN/zF6hcWgd1nCVTJdMQYc+DyDq9qwYRQNbCP7MVsqGxX13YK7f+evu
	 tfcSLnI6iLpXY5rXuKP83qh7lIHJxwjHGtfSAfknH8Bnaimg2RLguNvS4XzL+81VT9
	 1VnpXdthwFFeWQMYB3+9zQN5YYYiLnZhOnW0X6Ydr0Ap+TyGDhqjMbWo/eDLNGPsiX
	 75R3Z9iavLLFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96866D116EA
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 05:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176430857358.26929.3840928650555579967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b98371ac7b409ee760c59775339539504d7941864eea44fc60cb486c906d84f8
Date: Fri, 28 Nov 2025 05:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764308573
