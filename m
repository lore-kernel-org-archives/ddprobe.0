Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541EB7B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 12:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E67F5C433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 12:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678536305;
	bh=rBzIYRpZsyXnfASD8WTdiIrTWvUe5ypTd4KUrkguyDg=;
	h=To:Subject:From:Date:From;
	b=p32Qq/yYRMaa4vuyParF+pfll46VrU47DVDbokHyKbuabDLlwasH6lqORY6BZPNig
	 v60s0g+lqBQ1Yee+dNW+S/FsphmR6PQYI05Y6xMPrZ9JIep9Oo7n++S+VnVT6V0fKt
	 1KhEHoDg0+U5+gEHhHkxOjyZFJcOq254NPzVQGS0a/d0Alvn18iVrLTMGvgz9tGHBN
	 WYTcRdCs4xmmQCpXYYe4WvetIfz/F/A5TldoW3SdbWesrzidovIgsPNxfUB6RcSNGB
	 /Y0VmOhBzdaLkcGnTpVu7jaf8IElJYCr90tAGBKFVLYNiiFf9MAM3a4sZnbLO41O7y
	 VYfsdPKUrEzmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA750C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 12:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167853630580.5909.10843313169636648360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1817c3a9fc43171c88a702195c9d41ae1b9259b9b428d6568d0b98923b5bd46e
Date: Sat, 11 Mar 2023 12:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678536305
