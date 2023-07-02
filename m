Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57FAC17C9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 15:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8502C433C7
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 15:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688310848;
	bh=vpi3CJ6LxWi+3/mgECVY/2c5PdU7+0OIKaQsUQsXMJk=;
	h=To:Subject:From:Date:From;
	b=nbNUJdHKzJSeiYEqVIvihlrqwIh1qcK4yIEXOj9FiPI2SaP8uL4vZHHkdPgSQB4m0
	 EeyYe2DHB2+foPDfgFA0RHKEnbKSSM5x+TLEBS4iRt7fZxOoSd+4JwMPDCVs+tI6Ro
	 7KJyJXd3Zt/GtoRWeXlnB++Y0757uGOYg5iwzr+O/exJ9xtb3zAdrc1Ix3p+5sxCIn
	 69ZH30D86U2UFYv86VhpVtGQoPUGOtwbYCJ1EAZuHQyufwBBVtIZ4m4BtPzgQtXvzG
	 UQ04WY5hf0lG1vjVnmemiumdal/943mN0qj0TrmPQkAYw5DHqjmkSwMCnyuejdtua3
	 21jdgp++IrGmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE89EB64D9
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 15:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168831084867.24798.11076277196033846980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 020e90cc285b8b291bdb79f2f2f16dbcee225c5ad74d15d754ac92c5cf9a20c8
Date: Sun, 02 Jul 2023 15:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688310848
