Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C3B1C15
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A6B4C433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672246287;
	bh=27Zw8Wv7hYO9p2gxZq5HU7XDKphflvwf0U3T0sOzfUM=;
	h=To:Subject:From:Date:From;
	b=nJpmg3JS14EOQGwGJ26j3+tGML7vJt1+hLwoWUZpu6VsQvLq2IpGDYPoyG1Iogqaw
	 G4a5bXNFF2uSNWoqgYJ5bLwAKO2HEznnmcYNSvDhw0keLQodrl6I5jq0qPPVBMDbVu
	 KN+WEd1G1IoI6itq1O7cmpmSMKE3kmMAuiLFRRja1kmoJQcoXm8Oy181ZkZNIVrjOj
	 YrzDokUZKvLKL2cKKPhTx11G+Wfck6UZBYz3cAcUbx8lSl6tdVRN9du8Z1Ri8RiZuj
	 RWIiNIwnlCaBqq8JTE8K6HNAi3KrbesIvPQ+6fhjy8dnli/y2R7lXuwp75ooqPNZZJ
	 LWyGL2ibEoSdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71DA8C4167B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167224628745.9698.17005970569040866289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1f9cc2b41402dea40fca2c3d8d93ab5a25850d54f7c3e077d4b54da4d8e6d4d
Date: Wed, 28 Dec 2022 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672246287
