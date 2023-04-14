Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3145E1106
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 13:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3826C433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 13:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681477985;
	bh=rPWMqQaK0NSnKoWr9pTXjhf4CMonH6lHLhZcOOOqVSc=;
	h=To:Subject:From:Date:From;
	b=AsAbx7SxTxO/Npr5mPWN1bnaYE0guxZItVvFZISo13jdY0X6PgmlDK74GGMDU35OP
	 hZanG0IP9ZCU2gEJT5oiCKpriBzPy4gLIRlKcVepbbNAbFWGvWM5jc2QnVRyPMfC5W
	 jTBJ+piN0QYlP+t7w11BBOZvyVHj+JYMl18w8/pi1SrZJhrzWkqsMrKjPih/NWlkSV
	 I7JyArAvnIFM5Q42mnhildwa/RRpVUASBIs+vIU0XlD3/Fsw7tA7sckSEkHRIC4fQg
	 oxOovf7waxm3a30f6VcGrfjZr3bj5GvpUyV4AW9sqKoUXHOPaDjleviNGYvppCF2Tc
	 AvvfpoXv74n9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C32FDC77B72
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 13:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168147798578.32129.9677304145097149750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12fba65b7016196bec26a52595296d34c30506ad959b9f44eb141dee4168e501
Date: Fri, 14 Apr 2023 13:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681477985
