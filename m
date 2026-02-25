Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D10D123AB88
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772012693; cv=none; b=uz0orOIdbDdAVmY8Cl3O0BbuKKVIjo/UTZ4YKioUwh9atuqAtyX7bJmNlSC2aX3prfIXHfaBwtOM7CnXnohBOEx38J6CT66bZOuNqXiBap31YRR6Cz/mWY7rX9BKobFnal+QWHCQ1X7pMJVVmXA/Q+Oqur7CcjHXx50BS8oWejM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772012693; c=relaxed/simple;
	bh=q0ixG2vnz3p01V7b69Hqp4q9n0NKiAhIAqsrYUO5QDw=;
	h=To:Subject:From:Message-Id:Date; b=EibboDM8FvLHb5veGw1EogFAtrUf2MSMj8U1yX9X4qTyQ2d//2SudKrDcvw9eGfs102qBwBzLzd9Dgzuky4UFE//qBO7Yu5mmvBW0C6TuTPF8KdvSEAHqAl4F+h3TM1aSbMejo8FEdn4s9jJ7++Bxiq+mVkL1+AtpPTVz/sTXeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEyo8dCD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEyo8dCD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD050C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772012693;
	bh=q0ixG2vnz3p01V7b69Hqp4q9n0NKiAhIAqsrYUO5QDw=;
	h=To:Subject:From:Date:From;
	b=HEyo8dCDVzH3a741xAdMFaF7I0KGovj1qOoG59CFI6Im3kgkHrDXF+/JHFNVwFkrg
	 ndlVH4boY1T4IxKxqJOjswhhNJbcK0IcdSO8qhws4HfdwqFmOF2hCrfxEWQnWrHhCT
	 tNZJGLzLo7DIb+ffUWAx1HX6SbLuIZHnPoPKw514INryOB+6e3wjF6ukd/jkqedO6N
	 EPmyNgbvzwMdhsICZZOCJgVLgytM1nvU/3PI8Z2jzIxUP070Dkepzt6LyxxjSnca/7
	 9XIg0PSR0xWWE99i/S4DHCHM3fT8nAETcOvHOB/eOzd5gRdKB4Ud88505HtHDUROTj
	 u2KwYVxgU3BQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F1CEFD238
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177201269359.21889.5387356586445604471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fe4635d85d2611daee9a90e0bc24af42fa08471c0afd65e6c78d6269634c3b6
Date: Wed, 25 Feb 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772012693
