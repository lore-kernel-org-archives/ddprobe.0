Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FB7AD28
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 20:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EABC7C433D2
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 20:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678997406;
	bh=PsvqC9a6yqfcV73IJM5zMAAky1bXOCONId2j+KQvK3M=;
	h=To:Subject:From:Date:From;
	b=ri2EWH0lANg59TMKHN7WsrNzamqdWM2SYOR4KvzxargMprDiSLLFIxvanCUNUCGfU
	 wZkQ21H9phSbwu5ZoF5yFSCn5Ey+sAirdz/KsjWbV+np5HbyUKi8GD8QhHNCR+Al9q
	 ePv8a0qJMFPtZ7MJd4hmJecFc7eHr5ONxn6GzGUY5FtUre4MpWqjkQ3kbCpi8WbPDx
	 TWugvq0ktM2liWpuEKHjunV9A8FB3Mw8ojOo5uFdI4FjFtRiu5iCBHfLAbx8GOuOFi
	 XBg63c00Hgp71COpcwiAu8IySAdXcjQ2FQrSXZ2Q+BSt4s//Fvr+yCrMyX+uYstr+e
	 OPfaayEM9Sm7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D37AAC6FD1F
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 20:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167899740585.15409.14850895824382018732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf8c8bbecd46d4d8379fb740f115c5f5b71b8a84da59d00c3ebc2c747916cac2
Date: Thu, 16 Mar 2023 20:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678997405
