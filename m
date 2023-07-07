Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 807932F28
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 23:27:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E98C433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 23:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688772428;
	bh=kCWZRVhUKbjSJsOQVO0RfaB/KUAkhG0lKXqEHYfHPBE=;
	h=To:Subject:From:Date:From;
	b=CqGOoPZneXWbhAT97kJM77ca9lRawyB6szGU2JQaSbIcejNHiuFJw0yDq7n1NRDl+
	 jNYE+qm8virGLcngle1OLb5DTOUQFY/UyroPhtOg4gHqnjg74sSxO3oohGnj9PoW2h
	 uHrsCeMsIJzdQQBycLLutLooVzA2vMeWMhPQKJS0fSNPsi/6lYmn2XZ7irgs1WQJHz
	 lRzuY988zMQx6RCZmPLCZ9+iQj8DLLH5BMjZgJfI8sVwB7e5QkJf6ZcW3YJMrGXPyj
	 1v3BhIlwgVd+C9sFkbEpuNI5fZ/omI/rs5pYOtGU6qmp60qDjv2VXze128iOEx3Dov
	 eAXps3OOueixg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF705EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 23:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168877242870.758.3298976210417981803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 934f6ce05df28276b305a44f4f413c479aee0107ab311be909c4e394c2d2dcd3
Date: Fri, 07 Jul 2023 23:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688772428
