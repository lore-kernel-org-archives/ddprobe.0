Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99D220EC
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88269C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672644087;
	bh=Iz5+K7RomFUdrYl+1x5C0+9C4cApEZSr01MSHlIO33g=;
	h=To:Subject:From:Date:From;
	b=kF224r2I70nbut2VO3UsFpLnfOntzqHVnmrjM5k3v3lJ1Zsv/rFPBRA/00YjmSvuo
	 ivC1R3TJn9yUhzk3HqM5xKSJqE4c13set7niBso91HEsnmpUb0SVTpmDGn26+G3QQ6
	 xJCllxSpX90sxWzF89TAneNDQcaFWadMf5VYcKDAA8Rcr747dkRgZZSOX8hPTTJlzT
	 UA6EXEzJVPdsZP2hXSsWckDqopmIJSQC7SdX5EdrRdvZ5Z8Zi8ywpsMFqkyxI2QfJR
	 Ad8cWTkEOXE+5WgXPiCqxE3pVrKZTUR05PjvvR+uotHevfDYrjo/ZxvzpfsydB0Ic4
	 w5b4b8hlusLgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A609C4167B
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167264408742.22399.4559716722625821942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c84d08532673bbbf63c6128a6a15a2520d477c1c7476f6720a58d6843b14da9
Date: Mon, 02 Jan 2023 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672644087
