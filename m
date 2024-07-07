Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 726271EA6F
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 20:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720383383; cv=none; b=mDo1dtTNl/d0h+Zu3uuOEZMINJxIVWyqm9VfLELvDOF+ZyKlAhwoQSvj5dI56mXx2pD0pcfoJLm3pkNoTuhPLike7KPSgA+lFhJhBF9dLMrQ7cFO/qcPzTeHMioQx5AZR8bJSw4HWp7wRREabY4QCceHvyavaEcbwzRcGhuOOhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720383383; c=relaxed/simple;
	bh=O1/gymT4Xp0GsVc69l8L1R+I4LqCF+kPSpgONTXP1pE=;
	h=To:Subject:From:Message-Id:Date; b=Sx8wb4U073qXi2nPqGQPkX2c3qLY2kqgq4AZU50BpW22DdsZFiQV7LLF9/e6h/LbZ//vr6+nKiCGCiYex6PNsbFRoq+Ga0GVyqtQyGWSVU9x0w3y7ESGxst8atvuqVkvSooZHSiXCqcJdC0FIqI6RNrXAlp1viF0k2A59K4CPGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vi8Wq9yS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vi8Wq9yS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0D13C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 20:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720383382;
	bh=O1/gymT4Xp0GsVc69l8L1R+I4LqCF+kPSpgONTXP1pE=;
	h=To:Subject:From:Date:From;
	b=Vi8Wq9ySNUDYBzYvfdIHKvRaFbqgv0rWbDBN8tC7j6tarjFawoHtDlqW+NEYGfS7X
	 thhnipkGnN2g8DCqotK5IHng5/wPkEqTMSSAXqEFbyDpKu03creXyuqTvGV+CrNKAl
	 d55k4UFAnmxA3IgV3bLMNHIexsA8NDj4ixLfhFM92S3xUEFm+tlKGH5HTWWFRQ0Ryu
	 dJFu/dxYCyY1gJlXgQ9kjlY4e78JiFVhG+h+jLXuw9au9euW2gpR3JODiHHvzEjGnP
	 CTjWdTknEax5VzoV8L6BpBF+O9EMwLrqmyGZdU04tHTA2QE6DJtu84KLoBfoEJGGoI
	 1iFXMSeJXQPNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C94FEC3DA44
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 20:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172038338279.12411.13535887892864417383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c022973c4605be8cd5cd9f4714f8c339c63d6f2f2fe219a9b9c6301020a8c688
Date: Sun, 07 Jul 2024 20:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720383382
