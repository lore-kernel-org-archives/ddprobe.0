Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B327C7B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B70C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669956654;
	bh=wbvScIk5cbO3B5S6hhDaiiMbouv+hkFCf+JYR1p0S5A=;
	h=To:Subject:From:Date:From;
	b=ZzikfGtboLXb4/GrYjoEthtCI32HHvVbs3Vo1HDB15rLe0cOIuO6TThkaj/m9Icmw
	 1eG1sSz/PWISZZKbx9y+yWB8IyK/2jE5dPEWs7IwmS54YrzCVci18co6n4qJNfEOkZ
	 aegia3gVI5dAUyH8ERvtNp60Bnvaa0ao+zl5qnWFlTSREpciPoAjQvF6bDD8LVjGfr
	 bHpnCGJNZN4YaCq60jIZl+gJjEjsKCkMZcf9UhS8VW3SkotcMlQ237ZkeQ2T0w+Uxh
	 v87C+Frtk3e3wE0JCSRyJfrAin4SJsCqDRt4r0xy6Hc5eh01PdNq6uWTL/gYoY21V4
	 CWz5hD0lX1Xdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C24C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166995665432.25673.4902323550570558946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 164fe1237cd2f5b151bda7f83da624483f4a89336172b1f21c551642561c931f
Date: Fri, 02 Dec 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669956654
