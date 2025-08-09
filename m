Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C41BA36
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754719794; cv=none; b=oK7W0vxAyrNU/X9tY4uKVfLvmUpf0IU+KGttA2zx2fe2pzGB6eJn19i0DEYlq1KoYHUiXgXOIQgLstwSJgM4SK0kklysFQqc8zWNVRI3xgxG8G3TfEzwgCQ7Kzacr/f/ndomR1GjgNE5zeN/qqdi24JtIRsvv9/uZRAYDJIB90w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754719794; c=relaxed/simple;
	bh=wvj2f8xVcTfYxekdpiN9uOxZ8j7A9jjU+fHd3p2TJJc=;
	h=To:Subject:From:Message-Id:Date; b=NguEGEAbwNGBSDyfLFuy8B3H1GhCSUZzyiHcNNBKitDNEgdNeUGLUQBFJPKOTxRuAZQeruMiZJmVdRBxnCcSpWbY5pvVts8W/bK9UqsHfN8bVS5XeLgxu7tQCNvPmQLAyavvAFb/tybprHYVrBsHZk3Dqm2kTJPhh5RqNC5qwII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kl9TQhr9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kl9TQhr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1955C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754719793;
	bh=wvj2f8xVcTfYxekdpiN9uOxZ8j7A9jjU+fHd3p2TJJc=;
	h=To:Subject:From:Date:From;
	b=kl9TQhr9p5yiiy1iMMnXjZmn8U9XOKQXfHdb3ZD7tLAVq/p3FOkmNuqDaai/Dask+
	 8eNs2t0xEj/XkDVCxElgDQAMUeUvjCf3vh2bGg3g0yCPAowQimgood3trDM/tk+062
	 HYGn1k+X7diiZ1ocRq/+zSv+TcN2yN8jhWNbVm+gb03RaOL2Im1WNxFec6KvT+TNn/
	 QNs2rG//4JOs7xGwc7DQB+THKO9mTdmeEntdIZDNRm0zk5XSvVtwjN2bki+22/7NT9
	 L7I+07sWgGNq9K/39lYeYj3MTZYTaArmKchqZ6H5m8IxJVL7Fsqxmh/ZVRAeFC6VQY
	 cTPg4lM2cnkmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923F6C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175471979357.7219.17767571840279022460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1576800d9b9f66d61608b555f03fe3e0617be7f780dcab444a5a7a8acdd2f4a8
Date: Sat, 09 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754719793
