Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6B315A8
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 01:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E16C8C433EF
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 01:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674783785;
	bh=lmRMgIdGUCVDsgXdjKicOyFx2CR7PbHxzH+5aFXuHAs=;
	h=To:Subject:From:Date:From;
	b=qpn1pKKJycoP0U37IGuUHSGYjzc3cv3bILATPwCrS5HeRvP+DgzCEU61KwERlho1S
	 ZzGpAqPFBc9H9D1y6yMD44DdB59/oEMXClCDgQsEqgkuwN3M8/h7HqgCM3O/+1qU9y
	 PNlQxHtMnq5g1xHWl+n5nKP6cGIlAfuhlDuF0jmUmsmpGj7ytaf9JnhL5TTyG+0WHN
	 Pz+VCopSUaoddsEQfxHCU3+tnZ7jx0GElIzeiD6BTts6uA4D+WEc6lFnTpfYlP/SmI
	 1Yd9jAwjyAsarkePbQCEN/eXR/N9pyTsmSAiC+4j1G0/QJ3yQT+TknJ82/SGjI4wau
	 xuWi8Ci1a9+gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C54F2C05027
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 01:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167478378575.24851.5377192301316016787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bf71f718fada0ffeea8d7519288fc7a6d238dab607f2e0e47c4133f2fa3dc40
Date: Fri, 27 Jan 2023 01:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674783785
