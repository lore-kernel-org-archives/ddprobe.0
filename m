Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D0A1D54D1
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742584794; cv=none; b=sctWcUzuPjp21ACZhoPbbFnjtHnOhOW/DZARYI/T00B+YhCeWJMBZXk9Z1xRLGwdGWquhTIWwwlEBwP2SB09T9KLG3OQJ5eOmvcnyDfSKj5+praQUoorIIi0c8AbOv2Mwlotbpl68dGqRB1IM909EdR1kRlRc1usNSQixWc4hXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742584794; c=relaxed/simple;
	bh=GTEf/guiO0aJ+zBSfwR9j5GWvvuHGJC/pBQh3KWv6Zw=;
	h=To:Subject:From:Message-Id:Date; b=SaqBC0agn8Ez1NKJqrB/VVpt8h5AKVsUm0elIu08EkSsOe/6gmfuXNmLmFmygZi3Wnhe6r6bgGTB7IjHTHv6NKTDEQrDVSMp0pqgksAv7BRiYWlrCcGElfxFUDL1QiWYSHdatpzf4tAUWrEc7y8SEhr/NE8PrNpReVlpaykn/OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/odM8dT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/odM8dT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92C7C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742584793;
	bh=GTEf/guiO0aJ+zBSfwR9j5GWvvuHGJC/pBQh3KWv6Zw=;
	h=To:Subject:From:Date:From;
	b=a/odM8dTgwxWL25jEY3fEgB+TOmKFxXKbaUjtajrDjZgGyHk+S46fw/4Ch62lIxIP
	 U0TNpQTDbz++3MvhuCwLgKRH/jbI1Hv4B5zQsFM12GacGrPmWH8eSZP/Uy2qfh/kUm
	 dz2RkX5YxxH1ReT6ksyxwUnBseUixGRtF9WMOBDasb8HBNCSct3SasqwSI2Xn50PpU
	 d7nH2j2fUYOvQLiopq410gsiZMhcCjSYkHVOlnsvlbiKWrykvEd5PIGirLMqNBTzt0
	 1ZMUTmqgl7Eytpw23dI0ciRSAxofMhT9P1B+lQzWNF/0m6dRRMfqsSIorUKKhIARx1
	 AtFyuPq6huYKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A564FC36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174258479365.15120.13258109183742059979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2268d4875a59ae4a90e492437103962e8b5b4c529aa94aeaa36907c9b8b7e01a
Date: Fri, 21 Mar 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742584793
