Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC95A17CD
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 12:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DF33C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671796887;
	bh=gDbowyrHn+Asqp37OPTnob6boNyq9IxIFFRjy5oNHEM=;
	h=To:Subject:From:Date:From;
	b=bxXcGmH3f7WbULN63kOGmQC9EL8BXMysmrgdSANwxkALOcgajLJKKoJgJaKDqW6Md
	 y1ZHFBLtgvE24WrK0IjZcnnIjiZhQR2eGkLfo6k4CQ4B5/2I+9j+Wn7Fu8LPCKx6UD
	 brhoaMsy5FUcrawZCirDTadwM1vAu+Uga823EQ+ptVUbYoyfo01UQPf4+Ki1DN7wLd
	 wMGEeaY+vJFdU5/pexB8QZVNu0IKPH9WJ8PHBCLp2LK0fyVcYnT86zZ5bGIeokS0RK
	 Z7R13qx964BPDfkEfkWSjzPPUjJVgkYT7elNkWxpsRVoh/AsUroVg8b8OxqWUz9OC4
	 NPM4H3uqpXIRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6178CC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 12:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167179688739.31268.8265668911650769196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a35e1bf6b451a4f1719e9d2fbcde2fab946d0ef9563159eaebedf558ef837d14
Date: Fri, 23 Dec 2022 12:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671796887
