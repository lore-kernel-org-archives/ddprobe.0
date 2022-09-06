Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA624173
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 01:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D465C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662428453;
	bh=IHaBZMme3K7AJJ39WRjPLu3lDBCWG8vWDje5AX3gZlo=;
	h=To:Subject:From:Date:From;
	b=FSjP7VVa5HhQpYtWlhzmyp3xuRTSlc5sDoKQEMiS5uztwXAxq8WUbUg6AYCmaeN25
	 Wse7nOzeu0Qma2BEM+ScbjlTWKEVZC8/CxTBXZX9jq3gIiUyE0rKiAyb+8RoTQr1aD
	 p3kPgu1TCxYtIiprho+W55bWYx27JRfFuRW+wl1VhA14depnHDObvEf1FgeBUzBHdt
	 3RRIJ9NqklPnKMZLmScd6ISo6cIxz6GwBmtqCgP5sjrK17b7NYzX+2kKRPxkIUsVSe
	 e7t+sv8gSYRnMblX0VfoWrHRueAPrpCv98Y0Cd0UgtDUPqRDmR/znNwFHFBlnwDSRv
	 9RcRhCXqgMkKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51061ECAAD3
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 01:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166242845332.3344.16225807479490109704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d0f17b16eb2dba6554eee546cbd173b9dbd17b2443a6a929d5d724d7b3ab3f
Date: Tue, 06 Sep 2022 01:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662428453
