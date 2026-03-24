Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E182347C7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774327494; cv=none; b=Lok+Ju2qdRMdl759x0fyqz7r6ysOpwSlwqUWw3O9PO5G//JOy2Q821SIvNKBPRsMOkRjXVWXtY1nSmDV2Ux91YRpIPblsLItMYa0qNP+fIxUPhGo4VB3JAbx8ZH/lQ+FykpF8QcIRu3RNZovsKF2bVFcbVKxbjaW1H2qFctq/KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774327494; c=relaxed/simple;
	bh=yHRR6N3Aahf7xRqBXYC5Nkdxuev0kRz7DMk/UV/3+Js=;
	h=To:Subject:From:Message-Id:Date; b=MeX7b78aso8UndohOmmUyXYvbPFUAo/EdnI+OEp515X6+2BvqZKUNMGfuCUl7kE9REDPeIsvqvyL/ioYkZd6Xe1Kv/xCnU9LtVpe4zf1DYLv0KrR/2j4wmQk2J2MybUA+Lsis1pOFpjsvaKLAWGQSZizSKire96NhaxbI5kx4Bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2RlJMf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2RlJMf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A6AC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774327493;
	bh=yHRR6N3Aahf7xRqBXYC5Nkdxuev0kRz7DMk/UV/3+Js=;
	h=To:Subject:From:Date:From;
	b=Q2RlJMf2eMR3C+TULeqCO6ps01JSgS1PSjgq1IhYrm/+qW7olTNM5iTu+GoP5TNai
	 3IlyVOR31J32U+9wenzK+co8P9ZG3oM5PCMmmkc9JxH20quTJxbQWgJ3R3ey4jkdD/
	 heZTLMgsRCjjeYIy21fIVqG8kq3wokA3/TlaPT2J4Xr7MvJ5jDGGgG/zG7zuvi3t19
	 m/PkMSvbJ7VrJ6r72fgEs5jhswbU7Di25UxYfO/sXT7nwos6iN1xZXXYMcH71HTG7U
	 bx1s5OmGkzGJk1n1+eG3C1QRv2fPyR92vlsKPEyI2Yt2aFTkC+tChVzjYkIy9moNxs
	 dzVbaoOWMkA9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94280F532D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177432749359.20158.9995423454806492329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a6229e39aed475f201e32c77d7a0f340d2e36dcff536d3c72ed89aa727c183d
Date: Tue, 24 Mar 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774327493
