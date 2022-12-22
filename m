Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5AF87475
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EA41C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671732087;
	bh=ZAYlfvI6hWhV+FIV5KfetJlzvjD+nHbJP5l30USTVxE=;
	h=To:Subject:From:Date:From;
	b=Gjz5OObwbewOpS3Wa3ksGMclC5YbNFhLYssVI6MRlZ48u0k7LSwjykGAICk5EiNKr
	 GSV6Bw7BEB8p7k+M0iux8iSr+/LnTOEUd/kasHTmwPi7PsEiljTPBmZjyShUEK5qVt
	 r8lNdMavdlPggQMEgqBjhI9iEhw4V7Bm1d5BMkwaUa3f1QjJDDsGCCys/k1K7i6a4f
	 eiZ/icq0JhbZAdkse02im2AToiUfIybW0zXwu/JXKLHXtjPC0p2a3MGtjhfXqGYo0A
	 Y8aCJyzh9peleIZ13HoO+HprTAJ7zBJ1ACFfYl2Kh65deLbV3iG3UeEaZYDH73vj33
	 wfkgpIuyk95KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60EDCC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167173208737.32048.952865878582741543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46e9c6e42ad30bda9e66f2d91489d977848275358206a989d6e713a6bee4f37d
Date: Thu, 22 Dec 2022 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671732087
