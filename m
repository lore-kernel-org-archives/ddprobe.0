Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C91309EE9
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776787054; cv=none; b=mpma6+jz6vz6LKfY50Y4kMGoyMqmpKr28Wk4V5lKsaFzNLSX8OjFgmnSHVmYJ2IjLQYg7fsdd7/rWw8FIASB342or9R50gIxOCukBr6VPRmlHVrCgAz6ZhNde4SBWVZTkyT915KXMM5qBjT1pd+D+QztOuyyHyzmFjMGoC2XFvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776787054; c=relaxed/simple;
	bh=ymsHZbRhvZoP43ydp7Xn0rMhmXNBv2+00Mq5n6CMzvc=;
	h=To:Subject:From:Message-Id:Date; b=Izx4oANNvXZx8/IoENUfwcwM1PK/xZ3K+L5XAaHkkqf5JwKGC2o+pWbplz9sxT+MVx97rnECc4KsyF2D1ZKhX7nlWb2LndxczVSEbLngrKSoOXq5M5JySOiIvi4v3w7R7G2drgFTFeWGdYH9VFWJQzHqKY0HOxtxmLgfS8LgyYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRaoo1S7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRaoo1S7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7914C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776787053;
	bh=ymsHZbRhvZoP43ydp7Xn0rMhmXNBv2+00Mq5n6CMzvc=;
	h=To:Subject:From:Date:From;
	b=iRaoo1S7Ju9Kx4zvfijtHFdYjL0onCiyPg1/EVU1LMCFqYWqDN7XE20DCI7V9HjWK
	 xzScz7REeDvSvM/Q76TUXaJcjUmv2N05Oj5PxI1NeFHaIjo5UChHFcFcRbvPxFQGuP
	 Gek6SyueeNgAR3qVr52TgrX7AIIqgtx50hc3j96LVnCTX/NLBjdDJIXbTQ8E9SdJxy
	 WVCFYN6FGmloJdEGyNvM/DEqGWgZYNDwT6FCfcv8JDIafGsaW1HL66O6IZg8f6kaew
	 8V21y50gWILENchTqiUeFCo6CQIOW6gRt1U7wTKrugH6Mi5aKL4wTx5qQtUWfRyPTD
	 zFjORA3bT2WNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9993F8FA98
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177678705368.18700.4273995417166213389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b245ae088070c49ffdb25ec36a159907dc6c65c06feba0e490750779757d5157
Date: Tue, 21 Apr 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776787053
