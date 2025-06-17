Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348F31E1C3A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750169394; cv=none; b=L/S7DmsBttApNVRuv3LMeHv+Z2rYiR0jWVKO6SfEmZDluZ3G6plbqUvJOKpB/RS0NBooobIoXE3XbShvCNsSzZTtLyFssI05M8SeYBY8wuo3B21gbz4OCJzzpDDNgHEGjCmpZLKuxQlMuwb7Yv/y/nKPsaNoez15mR6Kv4fCh+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750169394; c=relaxed/simple;
	bh=gL0z3nssDh/6r4Y6O5446zedN5ES6XVJ1EFZ0ZU/ELI=;
	h=To:Subject:From:Message-Id:Date; b=flyYshhry9WR8k47EYLRdl2rU90amF6lG0xxdXEaTkTDQeeXu+voOYS/8NDUK4d8BN/6WyOEI01HItW6YPakFpfZ6W3CgE8+ZKMKcZaE61hYkLDksZRozgwGfssTco8CnfGp3Gj1uFTbfsZ5rZkzeUaW0NOj840v1jphPELJ5EY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAiBoIBj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAiBoIBj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DD9C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750169393;
	bh=gL0z3nssDh/6r4Y6O5446zedN5ES6XVJ1EFZ0ZU/ELI=;
	h=To:Subject:From:Date:From;
	b=mAiBoIBjjv9kiq+ZCvxkf7nDt3HQD5b/PnAhqjlLmwHosju8DZ96J92JQLXzuMtQb
	 knzRG4e8o6kUpJdkp7L4BgxMKNGgtQfFkIBSD37A/8863XHIuZl6roWpsm0kWsxCfN
	 9382mTur3ums2tBBQB8DcFZxJOaqIE7asD8i9miUEbYUBa91jA1qulRUJZK3WKITJw
	 sbnUYy6Xo8Yn4BIT91kIZ0rLTtIoBC+2URSl3vu0jiyiqpm/9bH8WLkHgjxfUr2gR7
	 UU0/bNXwC/TB1oB2JmXeGFxYIDqbaeH1tTyEZy41D79gji6fxj+9IwzBwPG1C485c8
	 yYhTqnPO9C5gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC75C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175016939358.1999.13295584713760572776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1bbab4b47c991c81bc16a021907b8c7658628387577be5c08b67614af21de31
Date: Tue, 17 Jun 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750169393
