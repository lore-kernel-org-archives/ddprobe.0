Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA04A36A
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 04:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 764E6C433B5
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 04:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661832052;
	bh=ArjKghhxXkjQ4qyuMENJKgazqkOOg+hTiIo4XH4LvEg=;
	h=To:Subject:From:Date:From;
	b=mhhF0tKW97vyJKFNLx+It20UuISgzmfCLb8o18Fp+RHho+xONablZG2NIl8t3LELv
	 wUIWwbM5osCXp/Z+TfkdW4ETOouFdWjROfU6iv1lUtKEL6H85pIyKWoltWFmtodw5t
	 xC6iEOHtbxsePrHtUhpRbV127MPoja6SJD/P3XD9AsisTcjNwQndY3TDwFMA3L74+m
	 SCk+ge09P59a+hpegPtQABg1WsIYOHU4vWu95XxQiOvo0r3narN9kk65s82PAQdk3M
	 0VE4LvmFj0bSsom1Mng4tDlDKdLI2ltGb3swwYg1BpJDnLx0hqOOEMB4V9o6YLzQZ9
	 fXBg46qfxoF4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59D70ECAAD1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 04:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166183205235.14261.15159330331555738166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db40aaa9e4c96599cd62adbb1f1013b07a9767ec98e3739f1a3e5fe85e947966
Date: Tue, 30 Aug 2022 04:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661832052
