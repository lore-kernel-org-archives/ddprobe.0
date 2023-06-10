Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9ABA42564
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 20:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0470AC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 20:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686429126;
	bh=QLsyj0yBvTOnzRnwjRykDDf3BQ/qzgYqW4VjE91Cy28=;
	h=To:Subject:From:Date:From;
	b=Q/22o9M5SMwiOiq9WPPjCs0+AH0FRLOzOfbQFr9xZeGj2JodNqqQuuZd4kEEc+ZD3
	 /dqB6KemFlzdbuwf9F6jLZNIMF5dIR5S4nFITU/yulofrIc10qw0608n+Mx6TEBVVV
	 W1QKU1zW8U0wCu5naEN/lBFBRt+Lwwu3i981BtJQs0Rjo22cpet9MZd6znvvZqAESW
	 +RbcesVv7/MnP5x/1bR28ofGfp030WV6ZncPICfHnBuBSyDLA9NiBaP/HroNHo3iXd
	 aqa9PsPlQJH/eb8J7FKGUNiq+YlLDbd5B8GIIA6OV7e7iD8TMv0QpnDbIa7G2kG8Os
	 EK+sNdZ2BXvwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9B0BC7EE2E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 20:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168642912581.4708.5496388927272680950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b36a8adcbbff5d1e5bf114f8f7a7e0983fe6942104ec0f7386e87d6a354fb29
Date: Sat, 10 Jun 2023 20:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686429125
