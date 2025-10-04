Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF4111DE2A0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759616993; cv=none; b=ZqfvLcYSlAh28X3FSTKMIeL8e9d6Q/sGZqdW+wRi+DVOjuQji2778SVklN2Xf1hXaobexXLmy+qg2aFgZXuuA1qw5TgJVeQpMvWGA+GYLWDg7MfPggp61W4DLmh7GL0EBVaSPk2+7ya+QgbZ+7HhLQIBp8wYZ7rRTmulZJFTS+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759616993; c=relaxed/simple;
	bh=O8wHrM9goLCTS7qk5G6QQBFWC4lx3572uZVwYTqDl9A=;
	h=To:Subject:From:Message-Id:Date; b=jkoJpAAR5hW67gV4WJ3+dli7AGt5PsVMFVpffNdArKG19V61YatT5keJe6AhJB8sq8JoJYPj/gUKX5lrsA00lWz942rEZ22FXY0RPvJF8gI9okuMVPl20q/KUSmh0um7ypJy6YQLpESIdpiljTKFELYZDURVId1N4AkYvW+6wL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxUyu9aK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxUyu9aK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD44C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759616993;
	bh=O8wHrM9goLCTS7qk5G6QQBFWC4lx3572uZVwYTqDl9A=;
	h=To:Subject:From:Date:From;
	b=bxUyu9aKJTV/Fo80VBAxnY1LWEje7g0WTDgc/BUAQNOWKzktK1jaL8C2Jmjb2o/Y8
	 lSKoq/mZlfZOKSd15V6sjI+G1RyrEHPIsHalSqx5qCWG92Gi5LAAPfmhSCK/49Z3Pn
	 LDJcywSJpAEVXUNm1lPc7iyJjWAMtE6PzLV+kH+hqTasvMPrOQsvgUsCrIxXJBYAM0
	 g6rrqxT5/IV/QH12inv1NqB2eEodbevZJotSkYgna3Tc8plub2sdFQgY4f+D9p1zGA
	 hNW4Orpr19FDDd+hk42FPRGG8AXKO+4tSsFqHryyXrChQw0i1uhu5yRYiIrbEvYYAP
	 8QgL8QF5m4f+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CABCAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175961699360.22214.12450104579808800399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 700d3a67ca13c7a5afa708c1df8d7e1d89627c03ceb53b9cf987df7f969715c6
Date: Sat, 04 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759616993
