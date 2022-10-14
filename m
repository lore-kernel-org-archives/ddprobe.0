Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1EC036D
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AD57C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665723653;
	bh=JAXoZb7NAaMGfCJBrfdDFYtqCDYPn2orv8WjFi3TzAk=;
	h=To:Subject:From:Date:From;
	b=WjAvLOjkW63XzgHNDn7T7gapHjjaoqZR9uMO4jJJyZ1XtdEVByrF9NMwY6gNC52Xj
	 fIVFdu2jfZi5nAY/d4h8RFdrPzZO4M2/X4dyBdEDLnU8uottTrIb6SpQdhhbis2vPx
	 Z7SSKIAdwtNjUwFYm5oXxUruJNnNshf3SMfIkMEpWggi6teB7bKNK6GBFpSeWk1BJe
	 0xOGj7ryszbZk9VHtyISMXe+H7X+vHSB5inTWnkxHuVeM4lrEPXZIbw5dpKS33pph3
	 46ErInduPnnym66tnC3bQBv7VXlHEeZRoVQLHCU/sbx2/QiaDi3a+5hRKLUgdwOcjY
	 QELx087IJK/eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EB77C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166572365331.26990.2943205072798854674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7bb6c02d6f9998592e16fa0e8ff2d79d7e1cb5aac4383b4199a3243fdaccc0a
Date: Fri, 14 Oct 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665723653
