Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC9B2D7803
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 06:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765349574; cv=none; b=EimuyCZ49utH9bRzTZAGpvGP3bD2jpNnObXtfVFes3+4hhgLl+GXrWM3VyQiee984fb/1GX5LpvOqA939q8KcPUf6tUSMOo4DjlwlYzseGpHLv9iy+Oi9qPHm37jOWhHAG0sdsVX9sKj7435jXMSYlWlJN8IK1NneSxbbBlaVuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765349574; c=relaxed/simple;
	bh=yKDnW8PO9NhUKBZpRzOm6v5zaJcD4SqoDZoS5diUF7Q=;
	h=To:Subject:From:Message-Id:Date; b=O4SrU/zJX/mZhCHfj12/Q5l5t/Pf0fuFo1OJu5LzI28C7sbGYEF2A803D8S099//CsSDHjQN01yCuS1TGTY0N8pl07Zb6M8zC/4iqBThwUp3auJOhij8mT5uJBv0MQXVAgiNDoLKnJpxkzCS8EZKp8ld4iNUCo4jFkBctYy3WPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRylSFh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRylSFh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B6DC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 06:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765349573;
	bh=yKDnW8PO9NhUKBZpRzOm6v5zaJcD4SqoDZoS5diUF7Q=;
	h=To:Subject:From:Date:From;
	b=LRylSFh5UZEO27vjpplUV8TTGB6un12g5Y0HY9xaDaT1Bd+taI+ZpXyCL1osSNhsp
	 zUzqZ8QfUpvepJvnIdkMGOUkmdlayD0Tzikq48r70Uw9Ezy6d0M48uAlP3hDWrib8I
	 KXqKgDbZMQ+4AG4TAd3duGch7SwVV6fD3n/nWQX/GCpb+I4wiEg6R7gbHEwHDfjIQq
	 2wc5X7mghZ7zXVOgq1oMiAud5UmjfX8H8VK22LPcCcSs4x1NcZfnpVfpxfTsMnsnDl
	 alBohHjqjLo1loW08wjNrwJYgObT/6y+X0Zz66d5TYIFN2SoUXsBJg2oTc7XTcs4Jk
	 ViFJ+lgqQDEbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BD3D2CE17
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 06:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176534957359.23540.14482280783755096170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0f1161619f6b1e861c64cdfa4da43aa90c617f06ef1732ed969b7b060c885e6
Date: Wed, 10 Dec 2025 06:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765349573
