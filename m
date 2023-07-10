Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 619B417F2
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 03:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6329C433C8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 03:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688960828;
	bh=DPaNqLxUUU5mDmgV/XXGttImSlmLAMhXBbFrthPfg+o=;
	h=To:Subject:From:Date:From;
	b=dlEjv1nlEXWrsy+5daSrDQW/uZtnego7V5sxq3U/KDxx1q2zF24s2rIbppS1wSZvR
	 HJLD3UWu1i2n8n8FpTdregccnhZ56vgRCvGVEZtZLtW8XbqqXhcr6P60dRzY9iKBkD
	 18YpEBWOWhZlIaqXi1I2rSIXCOqCFs2mtgrl1cQhubW5KYuggsz0vlx99kRZN7cPwT
	 qVwC39Ui/NEh+s/9EORzY4ghMIBfnzXEf7oIrl8G3wM4XQ1iHh45CoF2m2SMexjdf2
	 t4EPwunXpu8mR6UbvuDYZDUYiji6Ep8UFamnvWPU0rgyDaV87tQaoJVz8KiQEILzvh
	 /gdxgH74Ri/ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6ABBEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 03:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168896082878.1938.18066855525568633389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21ea8956a99b3524167a761eb7b71cdad83f24085da8b9ac590b42f88622ac73
Date: Mon, 10 Jul 2023 03:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688960828
