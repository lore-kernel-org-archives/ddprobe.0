Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A4D33E8
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 18:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE09C433EF
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 18:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683053825;
	bh=Aaj9ifTEmAAFgXISVqrVZ0SLBBVEQWLZo+PR4w/eNxQ=;
	h=To:Subject:From:Date:From;
	b=FJi7aXgnJfLiDs99FMc4YxmkAZ6tRl/1z6c4NUMuLXD4+Pkp9w/Sl7ZU4c0mJWDs0
	 EUb501c+3y3EYqV/Okmt5A7zsgciEQgRuumEYSy9MiZufBbC0aaILyc1D1aT7hT7YY
	 y/Xc9aRqVc9fK0dUicNIGzga2UFI9908TT5syldq2ZQyiABeUccwJZPSAMjNmmDrH2
	 ekAdc6j32luncvteTvnDQe2FsK5wwE7KHRJrHxPtYkvUsKjvb6jBYaDTrgH9bgtzIX
	 LyxwczPRzVDABua/zNYioB8JrI9D+adUrVTb5B6AcKPh2vF8Aq5JgAtHLTU7RbYqHs
	 3EfF2p7qXUkdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CF4C77B78
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 18:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168305382578.23471.7002269739846832069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93781a06ca87f56ef6c5fbfdc183c6bb2cdb21f544fa07de38e1654789ba7f5b
Date: Tue, 02 May 2023 18:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683053825
