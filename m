Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24D463F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81AD6C433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671253887;
	bh=Wc8T3W46PM72XiDFgTn6jsLpfuAwsJJkUHlpvpcB8yI=;
	h=To:Subject:From:Date:From;
	b=NA7qo3N7jrU7XknwXWD0PkDyl+IBijxBMqZvSxTmvn7jE6VSsYXS0OXBkeX2k18ow
	 6kgJ1mlgtcX+hYgF1yhRAcgUZeQch4Es+VNQm+HmNgCDVpSv16OKkhfEaWkJK54Xhl
	 cTRRPvUMlN7tml5pzlZvq4he4SPZ4PvWdfH2tzTw6P4Dwu0+hA9eHgnxNy3DvugqoW
	 lkk1ps3rkSIHTxq1lujFR0+MXE6cxKBcpkNFO0sIdzHbpz4Z10fJFSyyJuD/F+YC2a
	 gskQ13zoC8w+ct/APKrIxq2o477tBplvCuVktk76p3uLfML0OBHpRS/l8G8IYBm+EK
	 OXucHUFDKw9Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A831C4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167125388742.30183.15980733568454226310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 705c9644fffc206f605f093bc6293ac734d29466b8d9b20a99640675ab3a3117
Date: Sat, 17 Dec 2022 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671253887
