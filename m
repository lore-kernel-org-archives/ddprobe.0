Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB571FBD
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 14:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D36C433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 14:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674396125;
	bh=NWuaOr0m+kzaUuOsAd5QYk1NhUDqchb2ro2sGd5eWA8=;
	h=To:Subject:From:Date:From;
	b=XEP6i16+naIyoCzh/qKikrLKHc6GIMWybBeC8zz8iif/8rTH9zRhJvNROt00tEN+i
	 a6Ec2t+/bLGvaQI9P1y3WkPJ94g3p/7nQNCeCdSdHHykvPqu9uKSOtXlwW0diVmGm7
	 njrWw09z5dT+CM8+r0wfTqm5yLn+XGsYOeUmRCKYzyUGfoB77T9rXn9JF3OxrTj8Gp
	 M1fDbQttlE7r6RZMD2cj73epnv9P6LcrKB2ivjOo3t9k+yc3nwrGz+udZPoXguVnIX
	 7nl2VJ3BqG2vfrbC6RZGpH6bpDHYOgnieAsa73+0tIL0Exc04N6SzTYYRwT7RoL56D
	 SFqw96JTSD7uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7BAFC25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 14:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167439612574.28397.1404013443308977705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76378f77ec9959c3edf634a9410d4402262f99edfb097035d86bb0ed43c680f0
Date: Sun, 22 Jan 2023 14:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674396125
