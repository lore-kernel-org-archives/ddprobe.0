Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D47349CD6
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789444834; cv=none; b=a13aNhGMrP8yiYbLYpUq0yhPAcvAff8BftZEPDgvX12ABY6+rx2Xu80nvF8e/bDS9xWVm+RmJhCpirbbwl+ruf+YUpidfta4HsgFda0sRbf8VwmqGkw01LKDH6reQ6DEMXwQfofgSEFpDJKOHW3fAbq6kx6mtQqo/T9G7/9bNHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789444834; c=relaxed/simple;
	bh=sGZa3Yb10Mo9seoT4/nvPRPVVm5GnLz299m3mSifLEQ=;
	h=To:Subject:From:Message-Id:Date; b=GINgFsv4X9pvPH9+RRLavZVhDzMDIX/UKjg4NpPQhVYYvoST4ni3rwETsmxT2HgNzXmOkOzrN4ctmo+gGVAQNX0FtnEFwNw9YNm0c3dOzzj/bpTw5t133nCXDTByXKmcnqq9slg900zGrSEb9W89/MaPvJAd9fR0DIooTc4uKmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bD+3lSJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bD+3lSJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7D8C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789444833;
	bh=sGZa3Yb10Mo9seoT4/nvPRPVVm5GnLz299m3mSifLEQ=;
	h=To:Subject:From:Date:From;
	b=bD+3lSJP6n9FbTzuqRKUU9cjnihmQN/7q/kViN7H3kSSJTCcy7yrVpg3fQjoBFguU
	 R3zabtkq0oBWoaZta+bk7cQoXqW561E8v6Klw0i8UWu0j08PlSZ3XwKidic6ctYvHb
	 uTeSFeJbQcq7fU9o9SDfgzfoSbRbNq2o/EDwMeb3277RV5qcgy4JueaYETSmkukmVO
	 3s0SEnGNgqwlaOWRNtjW/fzTfgnxmAOf3WE3bl3dPqdGKYX+26HTbH2I36eaZ/yOz2
	 DIKtEypuiX4SkfveJBtSXE85hOfwo5T4ktWw8bUrm5p69aVBCuA1VFSXHJTGhH0g42
	 mBe3dkP+1jjCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD7FC88E7F
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178944483369.18558.14961989602940883357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a211b3397b45a784522610da9b5b67a1ff77258b5df59dcad268eb68d3d42f1
Date: Tue, 15 Sep 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789444833
