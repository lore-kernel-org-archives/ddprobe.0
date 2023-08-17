Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82E47369
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 00:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7AFC433C8
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 00:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692231788;
	bh=/Lo7M1kD/6+5vt+bX+pAkmEkCFW1u1PbY7xMFRyUoBA=;
	h=To:Subject:From:Date:From;
	b=uDALOnw+oFLWtD646NYVUHFnADSZnhhM2A/WJMEEjoBvSuGUuULCOIuGVqGl8wr02
	 MDVFMHxRTosWWA7UW2t7QiSoReqN8lIkduhaBMXoJZvVOdE/6U7g6O5L3xNqD9FkOd
	 eoJrjUd6BYh0zBgrK40WRfhnMwDow2s0rwACWD1l21P40ZdyQbYM1q6tgjczgz1QG7
	 edz3QFxAGVyzEgvNJ5mLSrxGdNzMqIajtUa9NQy1c7OZN0tx1AnUTecWEFsRa7AWd2
	 sXlPz1vVCwBJm6hc4bk8y+Tcl1QsXKCoF3h9b4bCO+CduI7MPYOdpmv8WqtA43MsNO
	 RDucksl9Go93Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4E4C2FC06
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 00:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169223178875.32657.12183668924254264062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7acbee3ef774cd936bdb0fb681169f5867ef2ab0106171ff49a8b9187c25cc1a
Date: Thu, 17 Aug 2023 00:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692231788
