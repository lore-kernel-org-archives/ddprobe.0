Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB3F17B
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 08:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B979C433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666686053;
	bh=wM8uT9mecRnQos8OUF3pL8EV7C82TDZvIfCZmse20+I=;
	h=To:Subject:From:Date:From;
	b=vQmPcq6GzeKTFZCzgQgFIi7/J8+feAjdqJqst+fEEOeD57yVmdmmpiLl2end6w9MU
	 DQU/mR74NRARX6r0+gpmARZUF7vM11A1jPiDRtLUL3JS15h+dDwV5ffezlLHl/hWqJ
	 VVNP8SC0OXa1SVJ0O9jZR4YECTRZTqoqDNJrultfcMZsOH3d3jA2vPp16ziOVSQD8s
	 oKIWWdug2da4z8NwLqqTn1K4CxTKZSJtlEaiHCuFe48VpMbVlRGiv/KWMTqN9huanh
	 4koJpsbNwFaWQnV01fOwTnG6KjfwKB4MSbFtQ6NEMUfZ1o/tOtQxIsvVtcl7WrTeg8
	 q4qYc1OB6BLHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 538F6FA373E
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 08:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166668605333.9579.1318607725691943270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbbf98a15fd18d02da6141b696ee97cb4e474b20ea130daaff34b3f3922982c1
Date: Tue, 25 Oct 2022 08:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666686053
