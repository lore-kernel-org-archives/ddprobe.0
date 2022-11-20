Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C64C4657
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 07:30:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86ECAC433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668929455;
	bh=XKH+piITjufxNpPjB47/kIeV2OITOZ9/yAbpEw02ypg=;
	h=To:Subject:From:Date:From;
	b=Mls78LVqjw10geQZZ9fLMgrOHZLoQfeUNmsKNJ7rs4K84OIaATH8Mkk8sEquzOF88
	 uOPAG/Po9aj1uAOcFhMY9ntTPhbKgMRpZobgT1FB5scu9BGAU65nqS9RH2MBSHnmmu
	 VDFr57d0Gupcm1bOdPjnXdR3Sel1slrM7j93OFUEKxwfV45l8kyK7oNw+h47sPNWrP
	 I3bqpAVTLBV6TTQJaVfwcifdhWelgjfCUiXWrbQLhyZkuCGfQKT8AE7nN0O1lao0gl
	 4ASqf82GBfNcuVR61a6Ey1T0ICLaxfhGU11x9dJsiUwXFLjc38SBBRa6MNt1rPg7mI
	 aYH8c55iZmNBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68BBDC433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166892945441.9459.9553800473051250922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53833adf363637de607fad12d41e0a952a12c70a83c02ce2f29b53c301bd78ba
Date: Sun, 20 Nov 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668929454
