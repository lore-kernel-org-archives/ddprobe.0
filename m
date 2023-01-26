Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFB3538D
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 21:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2612C433EF
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 21:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674768185;
	bh=4mih9cDWmEtQLUQn/HeM9HLUQnhWV2xchfeI4KiNo+w=;
	h=To:Subject:From:Date:From;
	b=b6oS0WTW62Ng9CM5rfkwtwa+ffKGLPc9fAKUWTH4/oesqvSLgqMgC8BT7iO9lrhjE
	 FOxn/ELADqc83++l0vukU5u3tFuZFEW0AexJPIzE2lljcMhUYl/FzO+/exT0U701AK
	 cUYe3LX4JZvFDc7OpEck3tewf+EjsXFKxok97bYLgNW7lGYJruTmUSbD1s8ilevcXq
	 nCnmqwgt+u8pOBN3d4LcC8CrtO+3OZcUklI7ivByLjuBa/3wHCCqxYzqRmH6t4IIAS
	 Ho8ybSokZ/DojYGYgBZFY4q/oWPKz7Kb9/HznmqR7UHr1gB2OZ5OAm+Xw1D5gg/M/f
	 7+a/SG00cU0XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA56AC54EAA
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 21:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167476818575.24504.5864445132842335163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 506a37d72428c828e2cd4b8d24391e51b0fbbe5fc64904170702a1b19a790747
Date: Thu, 26 Jan 2023 21:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674768185
