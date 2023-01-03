Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6EA625
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DD75C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672728087;
	bh=Au9kXgVPalUB37o2/RqID0pa3iBWOZLycmPflYfVrHw=;
	h=To:Subject:From:Date:From;
	b=iDjQKkqN0iMWeKsm0jb40FFQSRnUrC+6+lkxx9VGAcw0r2FgzHCuIWGGLIdHqiPvV
	 0Bu4kn6ypyFjEiEKCL5ndVQqBzz/1mDoBACD377R/eJ/1mAkzvkE5ET1iCMHts5N9L
	 D8sUDEmaSXdGzzxi8VDVn87AG2WIEovOty5Mx6xTMgsP8Tbyz1obT3pb5Nmri91OdR
	 InJlvVe2RSwNYodgvJVpsyjXd2sAjnAP8CU8cXGXi6od14r1eC4VSwgcU2SSS+DXme
	 9/17YaCM+r03Z/sfsacvI0omltXGSxec9MWT8lc3OrPJ1oW3s+MO4XeP+/VIhQc3mZ
	 cOOZ5Co11goFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 621C0C53210
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167272808739.9812.17963090235702603070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe0fb7b8fa3169baa6cbcc8edf6d041c14f355ad4bfed8b4a88e3354b323b4ab
Date: Tue, 03 Jan 2023 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672728087
