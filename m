Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78E810E6
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A97BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671500487;
	bh=Dld2i6kQszq1PbJgzfMDuBtJCBrPkd4bLxsPb4CSibA=;
	h=To:Subject:From:Date:From;
	b=tViJa3xn7lAS2vwo268oGpygcS7+83oYVSdTJwLEybuSPz0kxIZnXd/OGWAHhliw1
	 iAauiS8kVDSaRlZ48Q4t6V5S6T2mmQqH7UTvg0KXNs5VsYkR0fia+8Mgnvsk3vz95/
	 zTH/AuyXfprU19+zIGb0veNpDHL3cAY0xcXHe9krNp5bFVhhfMA/VRFySbclQGSJlc
	 TUPBum7VSMApVf6MGNmSaDzVffSLd47ot6x2S6sonOEUW5awVwAhZ9yNcC0D+dMLWM
	 ugWAvtQBv0WD9o0dwFho2rqwKcW/PAGz+DZhcvoY+IPp4Dq5Re/IedsK2V/90ESDvs
	 EC6Cu5G0Kx27A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D700C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167150048742.8837.7957569774095387965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d4e788237c131e303a26ee03f7f9083e81c1d208a0b9a050dcfe24c8f4c9ee
Date: Tue, 20 Dec 2022 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671500487
