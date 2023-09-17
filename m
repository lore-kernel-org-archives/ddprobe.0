Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FEF6FC1
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 23:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5207C433C8
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 23:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694993708;
	bh=axvLpXsTuhUfTs1KPnjLLE5Z40dBSES+Yr5g+2I8I5c=;
	h=To:Subject:From:Date:From;
	b=ccDIYgZCRNAuSTLHCy3jZUwTkNQVWFVSPAR4waaf3WMNZdwWLSMFh/Y2G+iFKauRf
	 +60HrBRRHyzzgLGRXO2KDpBzQfQ7ZRmLT0UySm/+oSRojy58ZSvRqp2lmmHFQ4xRDd
	 bgfk5lk+GK9CvJX6Bva0B/X2pyNpt1S5EB5YPUCFLD3FRmhVugtLc+Vs3atuOqDjL/
	 /20Ts/CBY4AUn/1BRSfzaJwlMFC6uARLk3N/x3B2ha3mBzL+zlO1r5+JM40HWIaIZN
	 WVMfv6sr6W4Es8hVuazd96VOJb+MxG5Rhg9iv/QK0HKGqNoHscwquSOmgm6vvLNsGI
	 QE8+sielZRTgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5392CD37B4
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 23:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169499370866.26964.1387109628459956474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec184f4aec872ad128a5c2f6ba2b937b9cb0e70f118956d8637e6a614a01f8d7
Date: Sun, 17 Sep 2023 23:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694993708
