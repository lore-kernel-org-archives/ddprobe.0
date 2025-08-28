Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB21F1FA15E
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756391393; cv=none; b=iPFc2qfJzYy37Y5wKUS4XMqoP+Sp6TgCUY08GMqCE5SALmKGKthe9nt8pzazZhxCRetBMVqyJw4NZbJc7u00PlpDOtK3GkxmmCwQZYRj/uiSpy0YR9hUfDP1t6HiUZiCHob+eeTTsP42FNrk+5Is0Pnz8YMF8YIw3+n8krU93nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756391393; c=relaxed/simple;
	bh=6cn0CZ+x2yHuJ3lYFXqCYthGiMuT7RrEYp5c3APuKm8=;
	h=To:Subject:From:Message-Id:Date; b=aM2h5n7qACszEvkShKtWEzGk6umv4sR89eGxukhvC8uOEooTfetfi+pNfbgY9lYEcdgoP+7UPbDtSOPYtQuc7YWQiyST/U9gopgE7/VaBPZkX6DzWC+QM5W118Lh1jAp4qS67HADTL22kCXtYXKBUjG4Iys0WSEfmPw3ZmcDiQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WinxkOek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WinxkOek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E193C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756391393;
	bh=6cn0CZ+x2yHuJ3lYFXqCYthGiMuT7RrEYp5c3APuKm8=;
	h=To:Subject:From:Date:From;
	b=WinxkOekb5XpeKzh0AO5EnBbCzY2rbs35OvYaO0p44Kc+tm1z9QEyos7szzRcs6u4
	 Fm1/hZiOOxfqnCX0H2Kx48/heO7JQY/GZzwFu3paI1QuxFGDy/5uaup4HsYlqSgnCx
	 CXAb6FBvZME5+FkWJAVybBMxFsiM2frwU75AY3J4v0cNj6N2gG6cmgQ7QImqqIBbnm
	 5nEhgqfh8mfoelD1o8bzUtiZR5iYKc8RpyKMbSasrJnF/vYOGOxtek5rkkQCLihJx/
	 1e1S+jiP82cokEFog8LIgqZrBH98xzBxXhVmH27NyrUrhuDhllAjTuk9rzqIxx/vah
	 9Vn8umAw6kkag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3C3CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175639139357.1246.16053745580886439213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bbac45b766b172dffc40a34c3fe05a53001837d7e6ebed1d23b57f867366128
Date: Thu, 28 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756391393
