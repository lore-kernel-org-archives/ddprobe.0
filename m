Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2BFF20EA
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 744C9C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670359854;
	bh=yhDjLWRHDwndPRfFiZxyitH4tzPCpMdusj2pRVAcGPA=;
	h=To:Subject:From:Date:From;
	b=lbkOBpQDifFQI9KvGZ5urP/Dzwr9a1ir6iT2Y32cP7rMCXyYmAwI5DUtoyagRTJi9
	 eVRg2LQ/I3GrqyQBvs5IJANc3aWlBm1le2/Ws61DHm9/mQNWWN8cwvF7x5pX/d6nQn
	 Pp98+6gcxB7aHRTl9bl/tEcHQFEjC0WxWR6wx4PvE7WEs8+AEx7TfKVfGy6cmQRj30
	 PcXqLXNrEM7EyTmZLgq6CH/eOtE2QBXm/7VZUL9fldD+bHmilR9IZqGnsWk0yevjtu
	 2VbJf/AVSlsQcxEBfL63Lgze7k5zNbnf28KMyyDTnwJCEZFo842NoVi2M/lJGqTCxe
	 vjP7vSSPg/uqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A02C3A5A7
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 20:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167035985433.31745.2780439025320314097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a49d02dfff01b5b9ff539d6b4158781d9baea9b0b58bc2dc052648eedb35fb
Date: Tue, 06 Dec 2022 20:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670359854
