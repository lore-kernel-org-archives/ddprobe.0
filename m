Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B51821A440
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754374194; cv=none; b=Hgs1Cxw0jf6g0l42c+f+vjyz2OUrIsaK0RGCJN/XsO6iJXMTqtb1jztZGfX6ErzXm2b42dKLfjOkOMESav5Sm3NSNee8IDT/FZSmoJ/EFfAssn4x+nTlZRcP5Kj/s/Mh0ELMzNfi9XYLksWFFEqrbpe1LYmwTi1WR2U4YSG5+jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754374194; c=relaxed/simple;
	bh=4tryCfrAy/JpZ9Kl/XwcruH0SBN/B14ft/E2Psmb+KU=;
	h=To:Subject:From:Message-Id:Date; b=Tt6IhcVruS0d5LVWJnqtdXptZHXPTRI4F2/lOTyjGDe44b5q7QBp3qt/EiTyA/oeUlGHFo4oYIRiJQoV+uhdzVcTIByDkT1sgWwa1Bj5OoVMonVfDrbJ0a8G/mWKXYPud7NIqH2LdDpBndy/WzEuhLtGS1mhlJQK+sNVX+u30cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XYj4+Q3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XYj4+Q3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1875C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754374193;
	bh=4tryCfrAy/JpZ9Kl/XwcruH0SBN/B14ft/E2Psmb+KU=;
	h=To:Subject:From:Date:From;
	b=XYj4+Q3QbyX2qet1OX8WVdF0DEBDoWqbmlRs8ytP/NxlpppUbonmVcaSRhPV9TeKd
	 aYGYrpPOcpyKVf58OXvRuXkHxynUuiqgphw94nhwBpGLK/rQSGNgK3ToXskECcQ6ec
	 OdxtK40wW4RmKQmHEA95RB8UeLa7CSwtwP76iL+reo4Y1ae8fInpe4mNeBX8KZSNxk
	 LU13B/mmOKzDuLU7zWHuGNnPewMLRl05ESS2wAPxErWLxnlk2gRNpejr9kRVtbqXmv
	 7GgxDYJ1By5QSjK5X/bDmfWVsY0JBVmySOjVsrSMB+bcGWkYgrT2GLor3vu8QkpRuc
	 sxj/P3Ew9UTJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90029C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175437419358.5665.11833919661794772328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa0e866ef97c9377543bd0c6e0e3789055a4ad4eb9b3abed5e5c2fbddb205bde
Date: Tue, 05 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754374193
