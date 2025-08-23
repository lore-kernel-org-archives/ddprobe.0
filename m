Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC9120FAB2
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755964793; cv=none; b=mcmJsMC3CMh6Q8UzjzW+cb6PNIEJeMTthba863f75TJ+sZByit9wLb4sP77KFycaQPByPWWpBrb7jV6OVZW9CBWyDS1BnHQdTCTQiI9/U1HyCKg9wehwkJFhHAufSHuDj/DuLUvsA+BBjjZOJLJD1Go/wfY1w8/XgfKgwe9Q+JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755964793; c=relaxed/simple;
	bh=qi0MjgLFxeMsomRWsU31EsfRtHMgCp6vnNyQuZC/bB0=;
	h=To:Subject:From:Message-Id:Date; b=nRzDctnpKAj9KOfbKtV+6Qxlavk5pP40jAfuIaT3OHc6Afi/YlRIrAxejkh9SYKQ4CYm1mvMQ+K7/66raG3njkeJpD+Zgi5SJV2zv3Gu+d6UNjsVqeqdgWa/M8e+rP1y9j+TJVMQ9oimmi+wBjtHhvTlqH5NZcNILhzt5gkj7Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtNM3Eqk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtNM3Eqk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B57C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755964793;
	bh=qi0MjgLFxeMsomRWsU31EsfRtHMgCp6vnNyQuZC/bB0=;
	h=To:Subject:From:Date:From;
	b=MtNM3EqkSUKCOLuVJdfUnP3tvtG+vwJbMbruwDvI6ZPXD7zkuHKSdy/BNC/Ia/+83
	 H+zxaMJJ7YEfz2Onv9BAivHStmcY1wUw0XpwqAdw4BEWg18bfSu4R/N6LHugyePbxB
	 P1Um/i9aq/Chd+Flg8VUb5oz+L/4Yzv5d66JmuCOaUaiGLcTEM6rqixKcpWKgvET5n
	 V9jgFNQGJFaOyzcp6ufGdxWnsvFNoAYTZby83K/aAWR2jHbuJ+3cDW7T0SPbvwYIrP
	 LVNFwB4dhkhg2ZPCxnAEyweVthWRYmebDgn9PIbYejsdfCSBi0S5SfkeudxKT2UzeF
	 naVq6epjmCe4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C24CA0EED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175596479357.15919.10435484798116833156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abab84849ce7a4a2ab232c7b39d5d4f5a3c0c011467881becaffb4416e2b3247
Date: Sat, 23 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755964793
