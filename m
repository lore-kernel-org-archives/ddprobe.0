Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B52B17C4
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 01:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C73B8C433C7
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 01:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692062588;
	bh=xey9XRaHLl8TA4AmscpTqUg96DLrSzFf934nx/aDUTE=;
	h=To:Subject:From:Date:From;
	b=gn46bE59rrww0BQ6+H59+Km36PtubpONq5fk5+otVs/+EhjDHLKaHm628yU1lFyJJ
	 jQfckI1bVfA2L4Fw6WYekrRDjIMhXe5fzleV7LFTDqgO5A4bxSXjc8fUIOaikh0NYN
	 Gi2Ivdp4TJmqYwfaz/WQPuqqccUNPVIUR3EmAPd/Gsb+oJ0cVB0589l6tbY2OSy5aE
	 F1AIJkmZdc6fcDk4YYQc2ODYLoOrQM+hppwINDuAR5uNjMwll49IF72XtlSlUxv2oY
	 +nXdpkIt/g18Vh0+Ix3QukFkihuG1lbhIl6GcbPwrLEJqoxZ9jw384pafszCntgNOB
	 pwPaqVmV8Bpog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B20C001B0
	for <ddprobe@lists.linux.dev>; Tue, 15 Aug 2023 01:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169206258868.5162.4215588964323061989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6aac690954eb7da88c96c7d5a11c477200fe5c729e4761072366dcd68114cbc7
Date: Tue, 15 Aug 2023 01:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692062588
