Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E93D4A4EE4
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791382234; cv=none; b=Rs367nGlxoGZuZ/VFdFp5qNmWFB8ermlOnURB1N+IVYF5O8bKf/olav/vWj6LUlraFobJ7uah4t/gTyIiTqaYxPEBtJ7yaSUsd9azbs7oY0KdKfXMe9xitIURWHmJbyhOglkNEf4vzRFCdTLEIfAI6AQvX5lX+Jj/sFPB5hs5Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791382234; c=relaxed/simple;
	bh=0ov8SX/Ub2qZv8ejvB54Yo0gpzMoiE6fEuAGbhGyFY0=;
	h=To:Subject:From:Message-Id:Date; b=tGgsjE0bCgza1ksjyxknS/pfdfGaTvMDyTzyZvwZmxFAJCkXCxrWspWBn9V6Pa/kKz2dtKtmuBmXZEOv10qfXGJsSe49uuOiD0onvcvGjk6h3tz4H0Wnjugcj7eSr8ZJ3nok1yBzr28N3C6oQhC+vvhEk43xz07D5W9VK7Md5RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWfNfpSE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWfNfpSE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5984C2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791382233;
	bh=0ov8SX/Ub2qZv8ejvB54Yo0gpzMoiE6fEuAGbhGyFY0=;
	h=To:Subject:From:Date:From;
	b=eWfNfpSEHH2fW/GLKAhxWbACKLsrXKM334y7CiadPmu0clRFy5T5fgqUL6y3HjaDr
	 h9ei4B/gUmhMe470Ee6Vvwo1kc/UxWBmvXU6BkhzNwU+3Yj37302/8zZn8KQ9RKK/z
	 zErRzsiP3NMF9ByQ6VwUNgcVkXCcJ+tSpGxNqMtiNRj443ussFsXqAvTbfOKny45GD
	 cQ0elAwaSUk+zPZg7MdoU2m4/tQ45QoKqKOFeuJsIWE5avQKSDP3rXY6RV7F4i84tb
	 H6iOdUWBRZtgEaQpzprCgytWlHGhAAINID7HbeAfOXCPdP0dE3GhG6lxb168addzw9
	 oG+1NuVqzt4Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4957CA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179138223371.13044.12976692517574110777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efddfe7ff687094a103a26c94d17b978ef166b867002384eaac39f6030554fed
Date: Wed, 07 Oct 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791382233
