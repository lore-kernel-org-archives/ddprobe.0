Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298AB2103
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 11:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA02AC4339B
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 11:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675336565;
	bh=g5lH/WcGmNVCLfVhvFpqVCj1DeRbqQO2udAYl3JRY8I=;
	h=To:Subject:From:Date:From;
	b=Yv3uU1GZmkdKfFnLA03EPTnmvNUJIfBrsX3ZgtuAOsK5rzRqMYZtX87T3p1Cvhozi
	 WDNEphDO0uldY0k89Sb4WvtP7+iA3k55AdmxoB5fBp6Cr833KvVd3XDqn2z9yk+we5
	 CgeExR/D7d0AqvXNR1qW7Gy79ARZZ0W63/obgA6jqh+EQTyt5p6d/7gtGb06IsCamE
	 malGnwDPsGh6jpgUODdmTvLagasUJlTfcApC+gVWAG/TzRJIgYCyLqM2cf7HoerqSD
	 /IuDCxy1A+iB4YvD5PASfIqBzH0aQtKjZo1wng0EeMiUmkm6egYxY0Zoas80f4pxaP
	 DXrJ07IItbO3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB589C05027
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 11:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167533656575.27829.16772835519194438167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f49b1ac03f20ce90452b38f9eb2aa33476fa029103297cea8fd5aa4f1c79910
Date: Thu, 02 Feb 2023 11:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675336565
