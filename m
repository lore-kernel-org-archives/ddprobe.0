Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223272BCF5
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755573594; cv=none; b=XaXIxVnO6XbY4zMCP7Rz6M83mRUjz3TjU226i2s2hDmjvYilPHeJjOjn9yQ0QTpC4bk0gPJ9aNN523T+ZXxiSSUI7WbziFKNPyz+6kHokNEk7E5vDelhK/A6FKxKCslF75lNDokab8m1RxWeTWWk1esRhXBcqPxZBve1ikvCYoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755573594; c=relaxed/simple;
	bh=BYzj/3d7NYxawSm/IlsGfWh07hh0WKfqPtS7LoMww7M=;
	h=To:Subject:From:Message-Id:Date; b=QboIvEtNX1iSKnAxMnf+yGKtE7w8vat4FXkj3Y6/Kwr7vHi7cRKeYuA5Ryk6Aj0Cu/5Wp2RcopSSMbMLCd2vS/Qgz4Wj4SKWfCCS5+JVI8XQhS9Eh7k4HPcrV/Pul2hijTyoGMR8/LFMm39YreGRyCRBw7oE5GOjd43zFe89FBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fIOQ5OBq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fIOQ5OBq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3146C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755573593;
	bh=BYzj/3d7NYxawSm/IlsGfWh07hh0WKfqPtS7LoMww7M=;
	h=To:Subject:From:Date:From;
	b=fIOQ5OBqTu3ZyWjuJEyyC+rLgCwJeg2iFyq48pSJkyZsuJvBVAbRzvqx8xHYuF0+a
	 HEicQqJlEviV1lawzhw3XwQbbS4QKvEugYO9i/+ftKkevOamybIRz+CPQU9U08lRGI
	 QPi/2Pkq4W3A3yHaaBUSo37QXBcn8/sF7OpGiP3qb1XBHsQdnrxYhBBzjRjw/P4B+1
	 8FtNsPl6DWxnYMmd2ADvc9RqiSj+LSKYdvy7zBNIxPL+/jx0EeMb5HNitVL8ZW5vAF
	 a/5/JsHVNW1CIg8ymeUFM0N7ajXGfX6iXod57n8h8HSuRvRLrKh4h789aizYtn8ySp
	 F1V552HkfLEXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A17CA0EE4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175557359357.19305.18187400624504919590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06526579279acdead164dfbde9a567a5294e505006ae7bc9c8b1d654c19840fe
Date: Tue, 19 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755573593
