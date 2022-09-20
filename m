Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D05F5748E
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70561C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663696853;
	bh=wBNx2bBef4orjG45M8soq8F0xMRlVZcE5CpcUOzPFSI=;
	h=To:Subject:From:Date:From;
	b=rEviKx2xG/cuSdHEgJCkkNPgoyxqddlCqoSSH+0OIZv4tWBJPo2V+Sjn6w5N1AzNL
	 IjWE1XaIlVBSBXg5i+JHdwF813TRaY81B6XQC/zGp9DCHOK9mCUh2X5T5xoR1yrep4
	 qNNW8TAqhwYByQ85KAiRxERPtlQI1HD2fW4DLF6EOLqKfxjtOC1YipQ+5wTHOyiIin
	 ec0H9Ik+WMdJHyqy2178s06lo3rRQ/PaRUJ7OTo5pZ3Iv9XucmQQyDo/nruqpY99Pe
	 wjFO+9Q2mEtlM5MTweGPVEqnK8isOf34adRGpelNGcH/30PT7/x5KH9OUbhWkOgcNA
	 KZcJyMMTjU/zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5251EC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166369685332.2309.2173404822857475935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8db7b111c38253d8d69c61865954445793fe3b88601f5055a002c1b6544719c
Date: Tue, 20 Sep 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663696853
