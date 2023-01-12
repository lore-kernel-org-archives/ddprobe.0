Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D652A2107
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E8AAC433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673518887;
	bh=q+LS2hKNusWFvAloPm9W24gnhF8XCZrgnFngAzhH5mo=;
	h=To:Subject:From:Date:From;
	b=H2ei9pqXNQwWxgQJFJnIbbQjRO+uyX2+/DLvbiNMbTUI7SbIcjvEHgM1Ry41+UqIO
	 14Pu6n7xjXTY779r9UfGyGk6no4ujQjPYanmBGQittQ4tzMBEEtu7mohtVcmYeTBfq
	 aEqIb01Udj7WBIqPU4bYsZV+QSkOEAyVJcmni3AaLvbMiLyzbVxKn1O16kkpaIX/9p
	 EkvbglBj3YKBVI1xpZ3NvOLR+SjX04sXKETQk9xsbPd138h85iV6ISJFsg5y+S6jbu
	 GARoUbnBHKFTPJf8LbVd9z6BZWaFyc0I4Rywnl4lrm/dbPe/kMNZLG1Jss0noIZA/m
	 tJyBpGqykLbGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66783C54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167351888740.26298.13261097021224713796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ddd1251d668c55abb3ea549094aae33d58d1f549ab3f5cb7d81bccfc503b55
Date: Thu, 12 Jan 2023 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673518887
