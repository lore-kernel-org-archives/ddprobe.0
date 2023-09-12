Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7554015AE
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 08:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F364FC433C8
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 08:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694508249;
	bh=D5wErNaJLvn/OlNQ2DAxmqStNUycwaCz7oIb02PuWN8=;
	h=To:Subject:From:Date:From;
	b=hU+u1ohbgIWuFOCRkCEQf4X6ET3uzQRhXFsHet4t6jQ7Yd9Z/RkCcHl18fRRbpr/K
	 EGo5E4fvAqh6qc1mkchvU1Yjb5vfFdVxVzWu/Hbh5HWaF/KnbKkNdwSiM6qR6rhrat
	 tqeymPAdYwm2znGau5w21tSVMa3+XYrPozg8ylZZg+7z56NLdhfsITcWFNWl+3aJRD
	 eC/l5XN9N1zggudFNKKn+tyD+zZfCzwu3Cx7ORmd1bocWHstLMr3VFYbfokYAyiu0B
	 H/eoNMHmhiHRGsXjnScAkIzcyzKfWqeiHAzFPEXIfZi2ASYi2F75kMuhXEK+2KiAXr
	 Aq3SchcGCuC7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D093FCA0EC3
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 08:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169450824883.5674.16446192940402110386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb30c51fcc342aaeba4fdaf0823e9392567f215903eebd65a3bca3679f8801b2
Date: Tue, 12 Sep 2023 08:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694508248
