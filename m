Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E573205
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 22:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A032C433C1
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 22:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669329654;
	bh=KoSjsQIxtB38AAnksln6AYblDWPPR5lVeGHg4l1kPVU=;
	h=To:Subject:From:Date:From;
	b=kmrt/97ut10OyHjjtU5qYdVdqgNd+O4dOAYBwqeTJD+6f4Qvr2QI5K8dJMewGZ/F6
	 7aHANBPn/ZYzUciKL2Mpt0Un/xMYPJJXXxm8usAMB0lmspJE3fLmpLbK9cuHSiP747
	 AnjBuBbI9oBRHI96V0Brmiyzrk4KYEVUj3aEk7BckZ4mxpPQlcSfRddaw5lQ6qB0Iw
	 znuflUmqak5qJGBM1co3u09x3KS8Xr2S3qaNR6SWckxEogCcApHTvDFdEazpcy0BQN
	 fQ5kplhge/JHElI3b/pBsiS3N69aWmZX0j4xe3WL79q7IbIBdRXEANNrh/ScONXxRF
	 vm2d7jpoD/qfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52211C43217
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 22:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166932965432.4063.5967243295495200295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8043904050839fec54ba9a9b49ff6f8ea2bf36303c9e507402364905fa461eb
Date: Thu, 24 Nov 2022 22:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669329654
