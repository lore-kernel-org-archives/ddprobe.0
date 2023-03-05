Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47FCD3FDD
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 21:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80BEC433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 21:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678052825;
	bh=QZgTAjWswhkeCI9PjIy09k5IwM+wZ2zWno4PXgBdDxg=;
	h=To:Subject:From:Date:From;
	b=YH1VccGdHFS3VOs5A+LyFhUbm3xltE4Ui5zjlyFkwFTFdCEEK4oEtbVUqPb+sIA/D
	 X7fs5Oel3ScJf7pir8lIweQOBElKE9TDkf8LdPJ40ih8EFVNTZB90VAEQn6SylSLG2
	 W4dq8R8bBYqjoFwnZrFtCa6mINtRX1csq6lzoTPPrq7EYRKH5JOaeDszM9qk+/e/oL
	 /5N0R8Hji/i1UNXLW4APgv/BJji1njUAEl1EVKu3hEZBTSlfLANmQrbcnDgc0/F2LG
	 Z1zYH+9evdwY0YaNjlXdJtw+MgaGrtbF2iufFsmQv3zV292FAEBlUmqjQ3IPeShjg1
	 lomyk1ELIdRWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFD5C6FA8E
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 21:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167805282573.25198.1231300165849048791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87e4f8fb6215e119055f024c743a41fd67583afbcdc956e62c0b990e3d52edf8
Date: Sun, 05 Mar 2023 21:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678052825
