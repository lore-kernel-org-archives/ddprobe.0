Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FDE2ED84C
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769363034; cv=none; b=jZvZJAiqhl1S+1AHZupgW2qvu5STFCtAA+kPMpmXW5m0MFuwS2AR1VfEDmoTXO8KuJxIu7s1XGzrqj/r5dScnMlhpE0uiYGp/KfW/ADqIlXc4PlrUg0ooZ6vDdv4IndirgfqHs0vy/oDQk9oH+CwiOmr8gD0GtSbHWUqjIXQmys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769363034; c=relaxed/simple;
	bh=Xxvsje1IaK3rY2xDvZ4zIeigaUclifXFUdC3Z4iymWc=;
	h=To:Subject:From:Message-Id:Date; b=XpwMsOJY1a33JfE4vsclnjvxTfp37ivCVpSaBY3+NO7+wOHtNiKogwB06Q41n792kbMw80BgjBf84QnJXjt2hHm5Rz0XmX1I9O/6L5vRSOIqj3O0001qeBKYZkcOwArqj7+F56zBe6zRHVXR5xj7oDGiOOpTa3+RI7H2WbIYZ7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAstzE8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAstzE8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7063C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769363033;
	bh=Xxvsje1IaK3rY2xDvZ4zIeigaUclifXFUdC3Z4iymWc=;
	h=To:Subject:From:Date:From;
	b=uAstzE8ZYNM0xKsQFfr8e1WnT4iJaFjAz/oyz1Q+dBKwBROHrU87cIYcEFN3Njc2G
	 DQZIpnk9AeciWsuZaJEHzkgvgrg48WJ8a+NC87rsrO9WFdOP039Nn5y7x5K0WdBvg/
	 NlQHOrcrLJZJQUkJC5uqhfDWK4/e3Z6Y83BahQ5JoWXNE870mjN7CKs6fXXxRnsEVg
	 RvCz7kc9y0El/m5hLyEoZuVcmx7cB+4U2wzOt9W9RJhnEsK/pllMba4Gt09dD+37u1
	 kqON36vPL2mfDoLbZcDCQdaSHed6ARdu3oZ6sQ/xjDj/u1Ndp1GuLI1tXu9p2zZ3Gx
	 UrBF01pIrshWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A12A4E63CB1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176936303362.11997.3113001976311490158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c56531e01c60655be46738256871f4b3068cbc5cc47787852cd0896de12aab63
Date: Sun, 25 Jan 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769363033
