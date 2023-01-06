Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84A21863
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85D19C433F0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673046087;
	bh=hk+QVxf43FEawvPaLs54R493Lwt6GTJzf6nkehr0gfg=;
	h=To:Subject:From:Date:From;
	b=NIbFce1joGy7FQ2gQSbsqlen3yUPBDojPE2eB/Rv9BnpN1d1m07kDtIdNTFs3tVVM
	 kvFfuzHdEzkgRc0+7buH5WV+6UcGgaAeT9IDFc/9G/Qk6EFv++Q7ESyuwYsH15Q1Tx
	 hvcAAzF00UXz9l3IMcTbFd0yZlIiO9XM4BiW+XhYlzlco2K5mfyDfwlPAcnB1uCg4M
	 IMCQdqcDC2Dzz0j99d0KCXSjVgpkUmo9oYzTWoAwcv6iUJPX79PjjOAgq+fX6V3K0X
	 1XdWji/fu232pZnI4tXRnEK2e+IXIs1tOozuF+pzy4nFT88Lebv81GOQr9226/iBs+
	 GiKhfzie7OBcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6560DC54EBD
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167304608740.13304.10759497142128142546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 679a4c3795daebcdbc395c58cd40662e756e131114238db16d9a2bdafa2320a6
Date: Fri, 06 Jan 2023 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673046087
