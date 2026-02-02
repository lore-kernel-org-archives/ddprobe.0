Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CD3B1400C
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 03:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770001434; cv=none; b=uTaVVqgYguVyjG9SqKo4xRfMpiDiuZYvuBSYsF0LYBUlh206HK2IziV8Z3gT8+vlFfYazEyy7oREaEVcg6c7xtKkPfABwkwQ1UUL5M2Vz5fUiLjmKdKuIXtfqYJTQCzLObzC/Gkln0WnbohoeJ/tXDItW9f5vsCiE/a+ScXiHmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770001434; c=relaxed/simple;
	bh=Qthb3HKBMekF4TnobGPiz02K+wb+1P/XSSDDMI1Qw0k=;
	h=To:Subject:From:Message-Id:Date; b=Ri0SUY0nHcF/bUU51BJXGO44yDbUad2oVu75+AYY1oAMjrzK4XLnaZmE6hXx2oRSRNXAOt7Dvb8VKWp8cWJ+NTNG3oceUKdXjV6Cp3wHbqWqV3leCHJBAq/PFAanH12EzS88cZGRwgBr9uf8sdZmFVMcLfY/48UNzmi4lfUE+H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TqsGu9ne; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TqsGu9ne"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED517C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770001434;
	bh=Qthb3HKBMekF4TnobGPiz02K+wb+1P/XSSDDMI1Qw0k=;
	h=To:Subject:From:Date:From;
	b=TqsGu9ne3pWEqH02+DO0Tt5BiK8NhoZPTLludvqC2FClnmhPQFb4V2/sILRcXZ3K1
	 hz19A4/QBhYlKW1kRMN79xi4iRPhFktwNXXxyayi05MsIc5U2xOrsw6SAZqAKQv1hw
	 +F6F1v9qi5WjOHVHq1tXoGT+lmf6gb2kG5r9PB36TMQDBZl2hEvMdMsU1WU/BzINGA
	 NjNyI664V/TAeuVk+6UzokDq2Alw3d1MxuihDUy7MSkoEy6LdOPAbbJLzb6Pf6P+ku
	 gSj3whe3eP5rvpjEQU+w8K2K2cNtUjVDt1ptMIh6fNe6hBgQkdPAGF+gWONIDgyf81
	 gCe4zdpYeSeFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA2CCD172B9
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177000143374.8232.14630976808971849926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0ce97c63ed7d61afe58cb7561368c4ebda717d37604493901cd9f460355618b
Date: Mon, 02 Feb 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770001433
