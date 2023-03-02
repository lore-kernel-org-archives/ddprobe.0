Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353F1110B
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 06:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8EE9C433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 06:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677737765;
	bh=8lzbLBHQll/7VH64uPWxPh2Wk9Px9YMz4yFMVK3zmec=;
	h=To:Subject:From:Date:From;
	b=X34MDuXridczdBdwMPg5QQS4TNIduVevJb+TD5FQMyW6LS02gGHSq2TYE89CSO/bJ
	 tbF8cemQMBvPWB0VsCOLSpGrFwiYakeJ++UJf9Y2hatsN+BjjNILKqZXmFdQK5KU+8
	 jmxw26XuFeSWapnjY1d0iGgaR+DAHnyqK57tUKFNMO5LlropP033T3LS2+hPda65d9
	 IrK4Uf2+AbLWs0lzh6rSzZxrLjfOLRgJ8F4DJAWkgS0vZQfx8g839KWDN+y/5EkkCo
	 U/RLsZffGQT7V4ND7NvxU4Dny2iaHU6K0U6JKAkEziDcEtIrZoIuhQsDZ9KPS24Vxp
	 ut4zcqq1i3K4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E22C6FA8E
	for <ddprobe@lists.linux.dev>; Thu,  2 Mar 2023 06:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167773776572.27114.10029287301910088060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 795cea368fe2fc0e4b5fe184f41a9a1c8a4b3681eb7af547c45290142ac33242
Date: Thu, 02 Mar 2023 06:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677737765
