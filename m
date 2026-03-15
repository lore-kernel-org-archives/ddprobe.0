Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0153D36F42E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773589494; cv=none; b=uFCL64mChNXXChUskDKYNoIyYbdZy6GYiwqokdzXsPgKsbfiu9w3HQAlp1cz/+UqjTFMaH2dhD0nsoXSNvnrvb9w1qYDDdgWyvhHwuqm5DtfL7IsM8hMyrtytKRA0q9oa/AygiUIFS9x7DttmFD2uBs8ui5hOLa11UequKJ6MKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773589494; c=relaxed/simple;
	bh=980D0wQH/ownHYxS5NK9sOZHzQYcOwKOSCTGtb4VdH8=;
	h=To:Subject:From:Message-Id:Date; b=P/DaQAtEHvyqDBmJ7Cs9GgEZ6hGue9EFIc1SsqqHvnKXpyFZ3WGo4eBjGTSFhZHWD1xQ6PJ2suzcFutED9ZK1wBanDA2Nf/qsTxd/ZdAjrISZCnJp4rgBd6EgzcI6CKKUKTeob/Ggd+5/bOE9qz+xBhSYNhbzw9n25ic/TByydI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBeIb1KJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBeIb1KJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F102C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773589493;
	bh=980D0wQH/ownHYxS5NK9sOZHzQYcOwKOSCTGtb4VdH8=;
	h=To:Subject:From:Date:From;
	b=GBeIb1KJTwN9lnKMne9/GCg8XSZAWlk582SWJj+TjP/kGtI+nkb5ze5r9NwKeYBc5
	 w3lVJDkgyTnH8/aqqv6xpnsdady1ZVqsDMXlhXDDWd2Lb2iKAauy/aIhxW3t3lot2l
	 uNXQVh4zOMcud0aJc5fFCVXrKwrq15GOsKbTATsJT7DX0VyY/VBs4pk44LUqFOtzU2
	 Rj1ulWFCoOpu0xaQM1GqACtVu/lLUeX6bR2v8NATDTHeU2MLm1Ye0ynSeHvNsjElZ3
	 dsJzMqfGeox8ckeFkiLk1MiUg8L7dlHAfa9PZfzXsYt07pPzIOgAa9UEAV6KecZEt6
	 X5VEUHTpK2UNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8D4F3026E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177358949358.7673.5771325456873903487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed0fe84274c7fa80b0e55d10fff3072381bf8434f365bf5ea978cd9f6ac805e3
Date: Sun, 15 Mar 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773589493
