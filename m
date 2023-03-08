Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC0B2577
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 10:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9B5C433D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 10:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678270265;
	bh=EvilaHVuzShgnctzc8JljDxf5HQ/XnKPHK+2jDj/O1Y=;
	h=To:Subject:From:Date:From;
	b=JR3gyP1QLK2IXRunYMVn7L02eqr09YTa6UIOlyCXmfUwJyaapnrjH3R6uFZtPTH3U
	 JC7YRw3wW7Wtpz/7vr83hZD43wXYhK/00AIAoQmey2uCbSgPHTgQDLnliB9F6XsF0a
	 eqZwv3Iw4skU/cYIMO3vGDB4qdO+m1ioZmEKONTvHrQD03po5RmbpDWT9pNT07ZdLG
	 FVViPph+maIR7MMKWDoae1+M9JN/yvBWXm0X66K4JMLKpHWiXS0lKbDOucjYZY0OCK
	 PyuTLNWVM7fYzwRjxVOa3JoTdkjFpbD8Klckjy0P721/A478qcWZ/71rHm3NdEeqGj
	 UFQu6eSDjjEHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4602C64EC4
	for <ddprobe@lists.linux.dev>; Wed,  8 Mar 2023 10:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167827026573.23007.4028421022337894927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a6829effc4dc1824f34660e1c832ed1903cc9e642a33f5a4e1b3c69287a2dc1
Date: Wed, 08 Mar 2023 10:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678270265
