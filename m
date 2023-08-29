Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634EF14AAF
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 21:14:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5186C433C7
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 21:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693343648;
	bh=TnTVadHNDT6F5bxlHPeweFny+nAlu+P0DqmeE5I6KlU=;
	h=To:Subject:From:Date:From;
	b=Qv7kSLmBt6wwkPgc0jpqThDOVoIYRP6fGQICagiOAR0oxlulF94Cp8y7xvdBXRHY8
	 1WKU687sLPXvD66LPSzxQVNO/OYE9AxqYeT9vbapsoX/ouQFyaL6ZREmo0DWw7LmsD
	 AjWtaUAKyRmyXiCt1PCOmIFN48CxrVhucsmifhp1vE0fgV+w4seG9STqdab4yyTQ1S
	 E2vKRyA3MqlqhALL7ENgnQtgYTbHVkhAyobtnTy890S+nMKKVJ0gvzylPKzlWxmKW5
	 NFSA0jqOSZCLwMJ28ch66lkvWsU8kDWmjzRPY4xlebCawTGWwV0+klmMnMayzfPj9V
	 FNVP4I6ytRQHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A71CCC6FA8F
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 21:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169334364867.5003.10056357485034390165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb1c3742e5992f48191951af4849dfaf2d16088cc78e79008ab4a837b271d827
Date: Tue, 29 Aug 2023 21:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693343648
