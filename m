Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58257812
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 03:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714878143; cv=none; b=Wk1xQIeT5kGzUfIDlXPZYZgg0kN0pg2/+LQ5Lvm4t1MReSNoAk7A5XcGoQQIpyiveYIrSKguajLW+MI5aUw5xc5s0IX8nnLFpNCBiEiFLEROEeywYpc3IjoVnHr9PphtZITIdb7JTkn38apsSXumLEQqA+2KZGsC3QKH6PcDwho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714878143; c=relaxed/simple;
	bh=ydN83eNa7v0BuCxXKCmz9EJzC57PQ0MEB4FNhxzXwMw=;
	h=To:Subject:From:Message-Id:Date; b=uZj8fijES8Hc6tWUs3+7e3j3uWL1cRQlIRnV37WdKkXLx7v4eEyuAI0GFBT+mwjjFd7iFv7NQv3jlwDGRozNSAi20UWdQMEbcgjwilgCSETW4v8k4klTZIrVhLUrO3QC2SbUDID8JeACX1+QN0r7QTnw+GQ8tEMRj6RHRdE0udQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXZ26Uz6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXZ26Uz6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8EE9C4AF63
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 03:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714878142;
	bh=ydN83eNa7v0BuCxXKCmz9EJzC57PQ0MEB4FNhxzXwMw=;
	h=To:Subject:From:Date:From;
	b=tXZ26Uz6XXCXab3P7biPejEsQEwP2OSgbHJIg3AUXtjSFXg5flSFHlnz5U/zQh/GI
	 ffjWjxoLjJW68XkHy4nkJC1vsBYNtK1E7zC/Pu3eLTMUf5fZZiPOqlXerQPE08U8rW
	 l0P3LBWJdqdK1IaJ09acCUBETR5+XU700bE7y+H06nh798UjhCtpCzRoK4rAEH124W
	 SH3t0MKBNC/jbijJxvHelx5QA8eNfVT8tn2nTS1JKTSnR6kU4hHpz8TVVJ1zPWENz9
	 D6qWeJnPv2bfevqUGYHrYM6Lvu1E7ZDQYRBsnBtE2uPeDOVlkcL7vCIgE37Q5O39Lo
	 KPbReOL9JcT/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1188C10F1A
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 03:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171487814277.11197.16388674126069319817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a85f0cae530e1f3791be1d326343511e8d1452677edf21199843fe71082531ef
Date: Sun, 05 May 2024 03:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714878142
