Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79C18363
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 00:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3FE1C433C7
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 00:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689900728;
	bh=+RfE11U4FXXLCtTGTqvRGau0TYt+c29ZOOg9yEfZxF8=;
	h=To:Subject:From:Date:From;
	b=FVWe+82sXtcujqrta+CN3xsADdEg7/laI7a6rJ7O3/g+0PK71qGzCA/vFt7K94426
	 x+AgmJvDlg6PFTe9GFytsosK2XtmsSkDIQcmtZ2VIRxr/wIkLBxzFv5vZQxj69lWud
	 Wpu3i2azMfwASYqWN7+Q6HCdV6Y8EjFzsN4Ia8+ftVj+ICAKoosVfHM6cySwAJDTXl
	 uPPFomqjkupzmnijXXM2Sq6N1Vn6HL7Lz+y6R8OVaeThgaj17n8dgLw+Bpd3kSyuCN
	 cDsrMoy3uUmIU3WCJ6xD7xtksZWmZwnQEJJ1pqckTBi/qBAgZuIOmyUHvXpm4cWxkh
	 b53tWvRt/Uq1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2A59EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 00:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168990072874.21541.7873172897275622837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a7e8f53e780f7f5e223edcc4ef2f78e7d7ac2d392f941738d4183d89b02295
Date: Fri, 21 Jul 2023 00:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689900728
