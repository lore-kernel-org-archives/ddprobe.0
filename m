Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA7ECD50E
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87C80C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673733687;
	bh=U2yoH/cLgJopvtjOwnlbDyFYoMIHzOBNAe9jmxEhYHI=;
	h=To:Subject:From:Date:From;
	b=YiWS0PqVvXxjU4XhDB9ux/eKmmTxoFKT2EuStReB1W+whx32WcDHHXv7LTc7VakkI
	 zeUo9J7RZQ/EkEiUrTqxYtyjBZqXUT2oP18aHsui4Gp7bKxqM0kDjZdTxsc6Vl/tRw
	 x1mz/isnW9w2vI4NwLf3mZMVl1k9iMfdJ0Xdqgu02rq+pXzuNP8V4lsLl68FGZXsAq
	 SNIyhIXNMMn95hm4WDj/rBfoonG3YZCVNHm6vT13aF+tPsw+uvTxmo3i8fwvy41noB
	 HF3l3edvtHsaorWSxz2Pi6z+9gx/Iaj6Bkhizw6Te+XKSgSUnM+vsbj1eNXWQaCSWH
	 m8gYmiM9bL2RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66ECCC3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167373368741.23931.9187067071619411777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a870966c20fded33efdc36f07e3a332879239a5d6777640d7c68a6a24379d34
Date: Sat, 14 Jan 2023 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673733687
