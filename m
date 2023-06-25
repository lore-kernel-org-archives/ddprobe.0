Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65DA87C
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 08:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3554C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 08:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687680788;
	bh=NjrLawMd0raBBz8EFsGQSAxnEzggXvdSK6JT0ax7uj0=;
	h=To:Subject:From:Date:From;
	b=FPmc0nModZLLbMlmzxJBbsQWr1dGCrDIvlI7lyZyvk3+jakuLwVFomUELJ9xMDLBv
	 kQtrjswmMMcCkjeDVWHcm+VKmrMSNLsDR3/0JCnnWGygx50Yvnc0liV6lzt571RiL1
	 Rr1tdZ5egXM7lqpI1EYu7mTVrLPFrstlfd5QjjceyYDbTfDvgnVcGg13rbKuA7ny1D
	 UkRBPvu14E83k2ClcEuAMNDTMMiGbv5JMo1Y1FFQdPwfaXbqRT8anDUGpF3lRZmRd/
	 En6AFyTtY5+DIRmdyu8HSjAPiLAE2QWo4ltS227xJOaPGN5UPCxEhfJKlPZJ8PChKM
	 FJ/i9zSXUAPEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3CC2EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 08:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168768078872.21265.3801991925925422161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aa70012d91ca90fee99e169da5b17539a0e00cd22fd78c8c3ad256dce80497b
Date: Sun, 25 Jun 2023 08:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687680788
