Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFF70ED1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 04:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79115C433C1
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 04:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668314454;
	bh=pvaelt3j6N11og5jrDMhkebXQyQ7R/zvts78wMca3iE=;
	h=To:Subject:From:Date:From;
	b=OOgS/EjcV7jLezDyY9DzbrFbp80hYS3x0DGuqz0+awt2F3Y0MtoXeYsxvayhSMGJb
	 f0SNwhbwHerasZjxBh20Sf75NAstrvVKKRs5PITMVShC1F0Lf0JmL5l3hyjEBSvvB4
	 EtL6XCobACazturjAyKCz3/8fKteQya+7VBknW4l6DxLRwi1QfNy8nQ1tIOhROdVq9
	 mfxxLj9YqNxz8wLKZTZqJ4T8GbTnCoW5WH6LO2trv4wCHQmjOEtDO3G7iM4eltrwvt
	 X86tyWAmT1+aK6DQRllP/zlo6mSe7gMxni+rE6cCDCAoK6hPPDzWfAUTOQLjSUKCsE
	 LfXYCR6ucsGOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B4DEC433FE
	for <ddprobe@lists.linux.dev>; Sun, 13 Nov 2022 04:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166831445433.9511.2972215238773801080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9208c05d9cce981e0410f4d7bc9778e54e923311c1acb1a2f9737dacbc76211
Date: Sun, 13 Nov 2022 04:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668314454
