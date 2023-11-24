Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAFE28C01
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4ZERLo4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DFA4C433C8
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700812096;
	bh=Py/4hCd0nCmaDW8wxsguYL8LEqpjryFjJBfM2CRG0So=;
	h=To:Subject:From:Date:From;
	b=N4ZERLo4Ao65CAXtKpFtIVr/uUwi/Nivp3ny6mLhtXNzwH8h5YVNaMqXKIEB86xLv
	 Op4LdLneuFpZsnGVhi3XWRMtc0iSI6xSztHZFlrlvYxljQMVWugaZyX6W5pNhzoXA3
	 zgRaZsGzRumOPyXZCEc4dzVTufT0JXdq2McXm7StOewfd2HfXw3ochx4lSsXMyk1MY
	 4c7Tr4nnwi+HZgp0NK7TyI5jx4rqfPzPL3fU6IK+Jb/ThAY/OJVs/tE8n9XRZGUfz2
	 iYcl9Ocq6XPrag7in2q+r0PI4hGkuTQueAdbJn5iQJhfDmVMnjSzboEU1G6MVW0o+m
	 SmVf1ccNbykXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62B7EC61DF4
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170081209639.8458.12761358676280820669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a4eb9ac96d8aa040370c3c3816a252026b913a9ca72325e69cb2fed10c651e
Date: Fri, 24 Nov 2023 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700812096
