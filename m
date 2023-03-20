Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4713D4C7D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 18:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F09D8C433EF
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 18:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679338626;
	bh=mk98SbAPf7+9YUvOpqPovf7FVc+8JYtfuTY7XZgQX7U=;
	h=To:Subject:From:Date:From;
	b=Rv6G7URN7IP0a2lUicNOdpDTZ1bNSJclSu5nER8kfZQ3rEEm0IwPKJtFHXgt2V+JK
	 ScqFoelWDA0kZ673UDjSB+kEO7dC6YO2szYdSEkeBDaZj1YPdGuIquM2CEzld+hMO0
	 ckJ3Pvi7W+7fDhdjQj7/d0epzdCtFY6tO5hbdOLhP6FyUUMmPdDxFsulLAactf9Jf+
	 gWsjv7qaAeZzIJd/oORNeJkvxAdvT4Xx6JZ+r5Vdd/VoOF+kPvH3z6xsSts4QXuaNB
	 WYlphF6XqjkI/4UWchYAiWmDmGofku3KRW50ntR5/JaxYdg49Y3c9xSzbrvUrzhrkf
	 j0A/w2/kRRXTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D75A6C6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 18:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167933862586.2835.16377724622593195768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e7e97243d4712dd1da07e1f6a296b1ac73aa068561ad34bf5a6cdd11af4904
Date: Mon, 20 Mar 2023 18:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679338625
