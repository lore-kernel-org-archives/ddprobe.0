Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB784656
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 07:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 700AFC433D6
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 07:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663484453;
	bh=EGH+ApKRZ0EsPz95UrRFPs4Zkb1OAHixgw0RFZZtNvo=;
	h=To:Subject:From:Date:From;
	b=ftyIw7YQvW/CudqvIxDqovGiHD/1c53OJIJtV07cbj+5eJZ0YoF0/v7bwfU9/UA7t
	 WdjgI+br7UGgi7+1Q+jdjlknKKMFMctXbrwkf8yai0HPXJsGqCpjMtc/IgKXh7lvMZ
	 kQ5cMK5giBvbg922Qlc6gylD0orVFzrpUPIhtk+IUXQnCyvE3XiMcd5AbY+GEfYf3C
	 J/Ll6KWxMSrCD/PtV0m2jTDuHcJ2zLGHEaVwFRHyDBBUvtUJ6kTC1atQlMIPl30nSU
	 udMVx+FfczAZ4hmJ/sEvs5Fx5f+qdQ3aV1fZ27t8HoNlY1OacAaFfqCtt6wtOb6dpU
	 RVzZmhFYIs5Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55E4EC32771
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 07:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166348445334.24817.1793598156678480229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bd8e61b3986b85b71871fb9f23c9cfa01286efb0036ade7ad3192e103c4631c
Date: Sun, 18 Sep 2022 07:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663484453
