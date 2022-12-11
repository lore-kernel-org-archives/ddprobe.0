Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB40D1847
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 08:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8826DC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 08:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670746287;
	bh=gY3VOSE7RaFULX2fGnqEMC7yCzmioEQM7Wl09CRDS+g=;
	h=To:Subject:From:Date:From;
	b=fqJMb7m3UyQNElr7J/Ap9SMtfiNC5s0ZeSqlpU/4LTUh83sVJ6c+GaHfHoNJCQc/0
	 Vbi1h33usvJtOMrHUItf+lrCJcPOdDsXlwdFqEjq9byoUESEVRC0imrl430YhKlpcN
	 UJWcv+F0D1BlxNI+BQ0cujR7JjrZAmFRpVzTSczsoKmzd3pIb5pfY9nRjfQn5etd5f
	 vpWxgeX5Z1pMuzc8l5uEzkegvCQAJvHQv4sff+3NP9xbF66B714s6+Buwg53zrqtyV
	 Lohjzj7ElBcWto1pGbxhw/mte5CfMrshksV+ay3MtkYv/Y7fjTHTOcUR+D+adcY5St
	 G6xGeqfgA0Gvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 692FDC4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 08:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167074628740.16145.17591792976414341628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e28fbcf62ab1bd093bb10451c931b75f8a501f8d9a86c82555146d7faf484a
Date: Sun, 11 Dec 2022 08:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670746287
