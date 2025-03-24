Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4245725E476
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742808594; cv=none; b=L38I9AK0u6uU6LQCJ0tTfDp3VGYa0oFHYvwMdQQoFXQebv6A/vQeTb0sVOaea2qmTzHJJdQ+B40nZfE6ONp6kScNohntrifUQpLoRm55aLSzsFhxGnZNtxRNI6mSuxTgw4ezGDhne3CSv63bOtuu8oj7HxARiZDjdsU4xGLyF+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742808594; c=relaxed/simple;
	bh=TBvC0j9wgfhM0+9acfZZGppsWK5hlRUCy1xjFBJvVKY=;
	h=To:Subject:From:Message-Id:Date; b=QWP5wpjUM5A2JWhq3jVP/+sHlk4HAwmzD7ouqY73kwZ9zO2LcXerBY0z5CnF694imj6wp4KCZ8CbH/cnpdemkrd/vXVW6Xjdz2ouyH3/Ve/FNpPL3RERtIrGUz0i8q3WMcQLxuxRpnHYBmB7JvmrHGJ1a1Q/3jKgKKDReesr808=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QQ/eTYmo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQ/eTYmo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1391C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742808593;
	bh=TBvC0j9wgfhM0+9acfZZGppsWK5hlRUCy1xjFBJvVKY=;
	h=To:Subject:From:Date:From;
	b=QQ/eTYmomGNgcgrUi11gmD7RV+FAFxPupTbo6/jrgZQ93kV7WHp/Sl3GcjgaSzztP
	 2Dubwong0YxjlSKODS4w9R4UxRSEtUMZutO+47qNdCRLauFx3ExjsqMzFZ5G0FYDyC
	 Sc3ZPm2FMNTblkgKes/lAN/HqzmmBb3sJxZ1/1ituMH3EBuVsuDghuvt2BfabIzQnl
	 MREYd+u3xqAoY6ZmMEbN6qgWmN0I7UobhcHtAJPnxqF7xrbyNzNGlfU4VHVL9tLcIt
	 nNDktDHkZFJOnVXqKwBys/QQWTJMr8WE8oodZqzyMOgV8yWxj6TtR20Ru7YAb/r9OR
	 sR1bD4D/B9Fmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF62C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174280859362.20476.967040331980612344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa6ec47f5d05ca36686ba29eb84940b78709c5a7f29dfb14fdb54af6cf2f0e0d
Date: Mon, 24 Mar 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742808593
