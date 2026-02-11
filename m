Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D72720010A
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770785094; cv=none; b=CR2HGNcfw0CietlA2ZYBvuvUlpQnMor1n8yHJ9WfloDbIl1slYG2vdThum3wOWWZDV6I1MofJskyDcGUf3QabxSHrK111CACC+CiFMkqH5dIfxd/ayRT6+yBRkj6L1tKZ5ycQpNE5/fTFxjFJ6WV3UMXMuJJ8jrM0CMp724Z9gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770785094; c=relaxed/simple;
	bh=Q5GN9LBDg/+ZrbX8QGt7q+4xJjwxizYudc5R/jSDrGA=;
	h=To:Subject:From:Message-Id:Date; b=o+xqJntcCn/mcTLBKtU4IpiLY6XwEX2b4a4svy6IyZdl7FgtE+SoSgBPgfjto5IKYEnT1ucKe8ZmswjbLRRaiQb2WPvZDIWmmoCxRMLmtPB3TvD59+h9fZBLEriI7r9Nj5VTPJ5ea19qSfOhKMFhbjEdViUsJS2VoG+e+CfpBPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXl/2wTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXl/2wTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD23C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770785093;
	bh=Q5GN9LBDg/+ZrbX8QGt7q+4xJjwxizYudc5R/jSDrGA=;
	h=To:Subject:From:Date:From;
	b=DXl/2wThkEmIKuPd6w10Q5MQNvjYYlMTpvjezQn1Pyu73Am6keUNgFRL3rHhu/oJX
	 5FdJk0SiLE0VKeNVVnE46N6IBQB/wLZkQzeJymwDv8VH1PHznO6lM9aNZpBX0BwPN4
	 ds8S6ZKZ/nBZ+seKLWXqVB4NEEEivs7Ua8qBNbYdiQACdyvo3Ib9sG5kcZvbE+bqf2
	 8Qr7GzSVixSo9Hoqsh+pg9iO1TMcc5sHuYmrW45+ujBXI+qDGSFrxI6GGR+LQQWsoj
	 IqycLDHajAO4XXdnAXx+lO6h3FUL706u0KzM8xKnJUyurCYtqq34RAEZ1EWifZ/HMT
	 AE1UOef5/EIog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B39EB5961
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177078509358.8995.4660336265360052508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b06b54ef15da717081018b53145ca1359499942e5a0a2543b80f2ad8691a099
Date: Wed, 11 Feb 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770785093
