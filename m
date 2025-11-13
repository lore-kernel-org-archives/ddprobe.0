Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF342E9722
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763062194; cv=none; b=EgUQiwXpQYEI4G3loutCfvsAL83DP17d1qZbTsz5rEbWSHYsCbZD6JQlp0LPoEI1cwl7/MR0YmJHlHA9QRKWNxoQq3Gve5OCVa+xBSHUvEKe6uR85XUg3Jmx0+2OKNBWfS4MEjr5T7UGugaLwyfnoQDnOxNH02mUsvlTnS/btXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763062194; c=relaxed/simple;
	bh=RKhKwiKrkzuBY3uEi+k9gy3etzPYHAvvSBYU+pdUXgc=;
	h=To:Subject:From:Message-Id:Date; b=Y7d1hz89537AW+6FYXNtqpUHyqFNQFNtwcv2+5k5FO2/rnvMR9cCrGNb/HwEiLq0C/hFxDgPgMcfapAzcoT1Jn6eKRMrMuZIYQ+/tW2OjjonZVkf3Vi6tupqS4z0JCxuQoyC5b1PQBy3cBuwoNFSXCuFBb2G50Nr4mD2d172WlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQaxkv/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQaxkv/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFAFC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763062193;
	bh=RKhKwiKrkzuBY3uEi+k9gy3etzPYHAvvSBYU+pdUXgc=;
	h=To:Subject:From:Date:From;
	b=EQaxkv/KQBUBrr2FkgY+/YO0NM18HKizzl8SazWyRmTX7hJ8T6ZWi23fAyxp+VFEw
	 1Y2yWLzOhfPBDYIaFfqHxcPqvRIgU0K1sDZdJtKgCKJpmMIIHCCtHG5MMAoi8pmPlS
	 HmcW1hx5WGW/ATyxK6J2KHkdtTrJ7FdhZdgFJ3vHN6A4lXm3K1uWOWONwij/x2NFDJ
	 RvVKEcxn5Q3JE45CxeZnodnoDFRjnjkvsWjRr6MsosihPmW89exL4pG+vR3KgMP/hA
	 PPALXoP/HaUikw9OAxnms5T6MsU5MyM/frpz4tg0bep8Q4QFkguI1TTpG+yBEt/L22
	 vENG8X5iQeKRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9164BCD98D2
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176306219358.26230.10593683772505426558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce7a99b8ce85e15200f05e6823c4612779135c0588a21b285d417ce11f242097
Date: Thu, 13 Nov 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763062193
