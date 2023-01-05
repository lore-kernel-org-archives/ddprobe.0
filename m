Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD4EA29
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A3C7C433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672914687;
	bh=CgPMk2a53y+pMZ728/HWpBnLlrhVPu9hkNcENWARIJs=;
	h=To:Subject:From:Date:From;
	b=J1GUT8BF5WJzfii+lnF6Y6GePqiZDTFV0WOeAuUpCO+p1Ff90wIGZb9s5HBHCoLuI
	 8PbVLev1t447H8rjlyEl0gWiGB+t1M85gN0yYNMdDMm/FNeowD0HVN0wrfZZxQhFhN
	 m6sqt7LDOzrAYwH7DYhVj5ClAHLXawLsg/IGFlGO3zJ9jZecamJ6uGqe2PPYT1Mto3
	 c2kt9OPuzIRXgaArNu9zrGoJ1UTCrWSjDVcJYmKlmCw6mIcin9zRZYNbDVJ8T7elr8
	 Qwaojl0DjOl5PTYIV6x/KZaUb1C45UIuGp3xC0Qm3sbFyz68WKgYI0vRNDeyulUGXJ
	 D2wBaHH8qR9hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DD9FC53210
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167291468744.5000.7114844350950802332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eec51095bb3d5ddaed12df82b661628e9fce35cc36d07cda15c7b6b05c1fdc5e
Date: Thu, 05 Jan 2023 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672914687
