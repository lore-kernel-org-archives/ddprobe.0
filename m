Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFE6627
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 23:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED02BC433D2
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 23:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675206246;
	bh=bw1KAgjYSo9hs19ewWzD1XnBeT7FBbDfzOmSiXgyZGM=;
	h=To:Subject:From:Date:From;
	b=IXFiy0dqQ9mavrsgpBhqFAajsFDyPpI++FUTE1p0uKiVegTbURITJMTnMdb8C68m9
	 R0xfo0Rx0jGBU/7T9gypQNZKhlQkdQmsVSskx5Vz7gqWH7m6NehdjM33w5Aeh7D+o7
	 c3k+d4lxIaFQNDDhnyZL2CEew1IdzWWqz5oybv0UUiamZI9C5MFiizVyYj6YYQ+6L8
	 xbRJAhBHLsnDwP5FaDCQdCin0RD4ktap8BORsxEM/SkCOmG+J3ZAyQ8FYDmaNifin8
	 mMD+bu94PU5EYiNAjL6+y2/OxBOV6AbZxmtxztE0FERd/mjvzSVSW9qUzBaBzXCenr
	 eR+TGcleO7xlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4A8AC38142
	for <ddprobe@lists.linux.dev>; Tue, 31 Jan 2023 23:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167520624579.14862.10145359896605857770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 708febcbcc7690d6b8da4f393ea704dfda47a6425de38a97e16429b4c7c6d43a
Date: Tue, 31 Jan 2023 23:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675206245
