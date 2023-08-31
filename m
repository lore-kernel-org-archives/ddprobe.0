Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C1210E1
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 01:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49C9C433C7
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 01:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693443848;
	bh=9POx8kT7tyxdeD/iqCtaai+FycooOD6AayWcqtkR6dM=;
	h=To:Subject:From:Date:From;
	b=l8PMB2lDaiv5kJ+wQrW1xRFgu6jjjtERCr7rO4GhaWp+PCihSWelLujH2C8iOP2lC
	 FjIGVygD9AO9TOvFCiMrWsdpLHrgOzoCy8QDJF+SxneNgGNohohfTDPD/0sQR1Ylts
	 PANBGK3P8D7x+zGgOurgxWLIlWpZ5UGifNKnJIRiW8uQPtdexjxViP9pyQto6xjaQE
	 9XnLKiFvYVaqOmMk8Yn9+tZ4klj1Ms3bJvW7ELbVz2EFnUlsTYAU0DP5IedKe+NQHx
	 vdStJKXGpNE1qOV6GZHYakC+vfd2Htirg1OsVpUfVw8S3RiLNJt6VKcOwWiBOjjVTG
	 356NpD6rba6TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3836C83F14
	for <ddprobe@lists.linux.dev>; Thu, 31 Aug 2023 01:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169344384869.18400.5354599203389140134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 307818dd81b9b7e56bb5d466e5cdcd5a20cb842f86844d388b07bfdf5d1d2f55
Date: Thu, 31 Aug 2023 01:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693443848
