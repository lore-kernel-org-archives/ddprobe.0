Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445CD189F5C
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745128794; cv=none; b=XK0pU6bEQ9MbsWkzf+P743q3iPHrZAqnfRw4DRNOy5kK+pOgubtHMk11vYtVlgbUhzFH81PpmRMs3u/FisFoJTA1Gj9H4jy9F4RJTQHstoNzh4SXt9lzGrqe5SzjyU2Gm69MDVyHxVYk/3EcJ14YEwVCCq/5jtfGojFEp3eLbjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745128794; c=relaxed/simple;
	bh=fCwkG3w6hYYSDFYPiy03YTq8DTNB7+UMj5PCpa8C6bM=;
	h=To:Subject:From:Message-Id:Date; b=L90gS9ISIUFa617QFC3Eykv3r5/iBm9FiKJbuZcDfFgj75L34psVWUi4UZvBoBVBVeDOfqhBcPPA/r7zq/ZCNMqOTS8FAjBBZhYTKHnBnZ95Xw5s2d8EXvvkN3DxIpo1RjbB4zxXJXxbwQxp+D/U4FKmbmc2iuSJ0g8UH+FRRxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYllpm1b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYllpm1b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DC0C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745128793;
	bh=fCwkG3w6hYYSDFYPiy03YTq8DTNB7+UMj5PCpa8C6bM=;
	h=To:Subject:From:Date:From;
	b=hYllpm1bJ6GnQ4BEh/C2IUI8dUzxZYsfQSf7aLMoYkjla/m7ja6gaf+wnl2sTnV8B
	 3Vx6/eDO5djk2w1OMEEAI12uy/FCW13twtn8Hzrr6gwGxTUZzpCi35rhpJMY/kqMfL
	 i3RIr4SoO9SEwkalkRJOV7M4kxHI5HynV7++F6JCZmJa44u90Z4ka+jtfHFJ/9+ZFa
	 wUD4zlYudNG79POwDJYzXzp1YIyGQPytlbP4DQfY9xPo79u8iLGaLR8Az7eHUJCK/Q
	 oWwYjz5nD+3rEmwy7b3CeK5FfBh4jL853F4z/7SufBT4MJXa/XDQbmsO75K49c9OfH
	 BvYjMMOZL9krg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93384C369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174512879358.17127.6948147155068529858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d348af448686d60971a17b24de3708c762616b5e75f9fbb4c6c21b7afc6b86
Date: Sun, 20 Apr 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745128793
