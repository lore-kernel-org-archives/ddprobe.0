Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE0F8F6A
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 21:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1719C433EF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 21:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674597185;
	bh=R69uOSIVM0GUAp/0q/7bkcDenPmOJhwT0e975ByHGKQ=;
	h=To:Subject:From:Date:From;
	b=N6ZLX1/U7K92IlrAInKqnwAvxAX1wjK2nT/Lg8D/8vkYaiVJzDFhevjb371OjbhyZ
	 mpLTJX7zdYtYZnZQi3uGpW2rpsu0lTX8jYh7Kjvy342vRI4lOdDZvs0pgZgFu7CmQq
	 acH+/1P7zJVFk+2gMdPb+gpUzNUXhwjY3A8ptGI+DLF60dSyZBYF2E+iBsS1F5X6I2
	 XgOODlXChByykAMCxJYoQX0Sj51JUCc/OhTLbN6g+0hhg+r+v7XvTW9p2bZ6ZPdDzA
	 7iphjbdLsU4vEUn1sX/7tHbp47Y5JReWNfcsy3POhU7m7PZu987cVmdpZi2YbrzkmO
	 utH62o7jDwrpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B754AC54E94
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 21:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167459718574.29140.13952743971359812581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d5a12c42f129d13600e90858b5a1da14f86edc80eb7d70cb927f067293e7738
Date: Tue, 24 Jan 2023 21:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674597185
