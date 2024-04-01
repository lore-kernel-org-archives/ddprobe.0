Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F123F17552
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712004497; cv=none; b=aNkdTrh2aEpon3UVjxWJqEpeQhsHBjmddrClzk/8dlYOc45Cvr1maaiZh8EAY/EOEItmZ4fyK7ekjwFppCgxJCrBYFE53NpY3G0vHnZROQFBqQHAvdeXCAeu2gq6XU14s5TTr4gmBsxzM/zGkqND71V9w4/OKegUBVwrYkrptTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712004497; c=relaxed/simple;
	bh=X3SEBCN4ySSN2WkYEfNYu7vLL2saHROxuSTLAL1E0U0=;
	h=To:Subject:From:Message-Id:Date; b=ESsC3IMgBwKb/a3gSI42lx7MB3x/KjEkGRjwo9YXpqpPKLFxmONvaibeQ3hlPmlhYkU+ZK0/qU78kmRBRDSvENSpKWJbxjr3YK/EIJsWl9WYoCg0AVO2YZelvQCFDIg4Pss2+BFBe10dy1ge28fzMOYSYJ4COmwoVpvRomZdgw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cq9cyTYy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cq9cyTYy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78DEBC43394
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712004496;
	bh=X3SEBCN4ySSN2WkYEfNYu7vLL2saHROxuSTLAL1E0U0=;
	h=To:Subject:From:Date:From;
	b=Cq9cyTYyeJFb9UMtYIUmBrpvMvzEd1cAV+6F6hZKg3JIEnmyAT5qcQnhZ+8kQQLyW
	 sUuoX6DGlrJux1D4XCgFRH2nJmqd+AUG6t32watbnBlVZfaQnFvs5AjKWE8wnp8ozX
	 LjhIlFLbIpnVaPzurUTB80++HMacKSGAYSWcyRjxPrNbDdwgbOErCJZHmF8HekoSno
	 w73j5YOrKQ41I40UCyogDMXH1Px0dgBnLgPiGZ4cR24xttgZ9evGW7UZV2tKXWJ2PH
	 Bnf3Z3H6Wt/qscD4HybtxqrO3Hf//tnZt3UqPSuSL88+/wW5pnm8fLOcXONgbZX5N1
	 7nfcwRSZa3ePw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 624CACD128A
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171200449638.23244.17911852763112058696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c264951a0e213a634912c258565d19d9827d333058fdba572875c4cac8dd563
Date: Mon, 01 Apr 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712004496
