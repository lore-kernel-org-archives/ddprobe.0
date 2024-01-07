Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181BC11C82
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ow6SfXzB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88A44C433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704602296;
	bh=p1tFiOlIVORVHLGA60vdmBb4z7I6itJ8VekRDgtMj18=;
	h=To:Subject:From:Date:From;
	b=ow6SfXzBfUOprQaDFIhvsxDQsYgEntqPeu5m91eWuzLDdKpidrqIDnZIuRApnG3cs
	 mSXWYbRqDggoo/8aWrH9Nn2LZrhkghhJxpqLjqxzcD91kojmwbv9C2PylddkKqrHq6
	 tfcf37mbpkGJfJAs7443kkHHPI/c/NL8wVDKzM6d62t+cjFRNsXKSSIhCwEyYGjDm6
	 XiqWgQYbpkU368m1AM9nHhFgQiBECZXxWZci0eY2634fbUMCi9x3wSBdKr3JTSxOSH
	 SzhSqtu1Opd9dJ97LOHEMsssZy4c4JK+5sUx0C8qfMcQOO3ngggcZ6R15qk+Edr1Zh
	 o6AROTKt+AFUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67772C47077
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170460229639.15819.12291498755960064120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee1cd4d686fc294f2e9065c1d4cb0ffd27ffc605802461c09c38ca6bb4cbdda7
Date: Sun, 07 Jan 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704602296
