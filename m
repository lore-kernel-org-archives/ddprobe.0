Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA3D8D523
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 20:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72528C433D7
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 20:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666901454;
	bh=/kOW1DViG+fPPX5GRSvcbz1aAqpp9CrjK2T9pSYwuL4=;
	h=To:Subject:From:Date:From;
	b=rWmZB4Bzgll2bGRftlR2tX6ruwF6vcD99Ncmij1feJLx/5oXEHSKQb+DxD3sk3nmo
	 CWAAfTzhhU6agZGCYSV8folc+sali8TAFWA7gOyvU0Tpid7puDxrFWQfQKaZeVcVFG
	 nINk/HiLPWhKzcgVvDltLJ4neh71nNBSPfdYHbqTVvYkVkH92h6h2t5efKqDV0EfwV
	 z4PTiYKPAyeSetLZhZu71nA5TSptVAklexW1E/yhIY91CnWNzbQ9U21/IUXz135zOf
	 k4FR3uVI6UG5q5h8/RpW40p+yEV/FVoQ/J9Bl1NAVM28uzfXfOLhf+zHnAOH5grzia
	 8by6sd2hAB6kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57546FA3740
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 20:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166690145434.9182.18444185554089629192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d4d9757b139aace434a409225637be3f395a1482921e82450aa3882bc889e5a
Date: Thu, 27 Oct 2022 20:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666901454
