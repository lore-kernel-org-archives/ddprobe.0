Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332AD28C2BD
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747922994; cv=none; b=cn/oQkQNEC5YP6FPXEYOmhyp1pbJ9DFDaXUtEqQh5b2atHe/EPjn5xAx5gFRGCQ5Zv+slHCmtBmII7pYARTCYaIvu4MY0J4PXC3iuIHG7A/luRALo6kPYRpWqJYYtaEBFMyB7xweY+0gO/+Clhl+RPboNMb0To2VdXn8Bw+mKE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747922994; c=relaxed/simple;
	bh=eKgf+U9QdjjAqeUGD9LmlPmRpO4XS7qscvHpxXu4qSg=;
	h=To:Subject:From:Message-Id:Date; b=q3oaVKjTfQPfnoLJVfET8zXB1+X1GVcSb3KUZwmiBgXO61rNfZMqwaReG1vhbUzEGX/zq/Kl/ZW0ljQa4TqlKPzrcATY7gNsqZUkcXDsd0nlbstSVDOQxiMeCYI4T2kpdeXT99ZbHigrY7HF8nHCgmi/EkWJasn0iDmLwk4wNLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFwtKKzh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFwtKKzh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5BFC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747922993;
	bh=eKgf+U9QdjjAqeUGD9LmlPmRpO4XS7qscvHpxXu4qSg=;
	h=To:Subject:From:Date:From;
	b=JFwtKKzhhRoLSOek0ZBSPjyqlmR4JyT0vFTEwuQyoa2IqlB6I1NAQyzxiFebVxKqr
	 HNC3EmBDcDn4By1G2vUESJor3DjS7neDC5v8DBAagBf41p8G26eiVt5KasIR9QbI14
	 hIfUr4OvT9pyNJA6SbG8VHYw9OQLqBsin+Kw7RDytLuSxfOVJAEV3J2WCzNTy++eeG
	 pglH96wBqxFlXQrn/8ABfZPpeqirtMxRtkp/aAxulG3SSnC7TNZFQ/u9yuGUYuve2X
	 fIJqtkNf8BbUtY+Xe/ReAe/D7yB6feqsCXcZ4O8jBsatnf4W8sm4h/NMSHrs65ePwg
	 h9NjCsq8TVOuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBCCC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174792299357.31386.223568857188887625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bfd78fe1238c79dbdb7d1e31af09edb65c39d026b0b07595b0e5a62459fa5b9
Date: Thu, 22 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747922993
