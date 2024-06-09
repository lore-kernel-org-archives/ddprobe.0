Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7795A17565
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 11:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717933643; cv=none; b=iKL4AJuwj9zDHkFekHNnUb9k0DBhbhUW03i9mTsyVtKxAGk8WEC20mf7nJ69FFNZqURFDfGZ9MZvxiVHegcxyvl2yubp/Z6lrEeebHD/A4BPyGsiTVr+BmgcVJIbOJieWsMnNb8Vzs/YZIYJdTAZ/soNmvhJK4yuiLis5l8a+Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717933643; c=relaxed/simple;
	bh=owpMA2kBeYdCJ0y2qqOzgguW45NMioU18fjcM/qC6b0=;
	h=To:Subject:From:Message-Id:Date; b=uZXjm9IT1I5hSmgFvZfDNrusbqHTBRO6xjDmQ8z9vTnLo9lnVOES3VKHngZfuUyZr2fKDAOwr0qZ2HNpuYEtuzf4O5r8MsyPwWePb7kp/z7m5JGiseAOjOFMxzszq66P+Fq14AQkvdwRgEiZBrAUAr0+QQ68I9k/RKxjgdOeIMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HF/vEQiR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HF/vEQiR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 050A3C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 11:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717933643;
	bh=owpMA2kBeYdCJ0y2qqOzgguW45NMioU18fjcM/qC6b0=;
	h=To:Subject:From:Date:From;
	b=HF/vEQiRDrZzQBdJj7UvFfDXhUSnYIwFtu+alYO67FFcP7m9SyoCKJv3lEIE1lw7M
	 K09cPu8KqPf6eRQVpnV5pUXpyJVi5fz0n6ynGr9MySKfgq2hXScj6Paj2OJ7ztpqhE
	 2z3LNeodbH0PeiOh7H7Q7gro96ISTNSahZqiICxA5pw8du1aVSiOy+LLVwz5wgcW5R
	 ew67thZ0XkU7FWKDo5h/jOpDSp8Kxxnslaxwl3JTz40SKfI6cHmqSf7ZEel1k8Rtko
	 GzC3FnNpvnWFl0ZpTf+6XanPhJVYKZq7ur6bKtNc6Nd1F5FhgbOOTXmMlE0SpmQmgD
	 PhdHtsBok8sMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E336EC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 11:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171793364288.16131.7205717770618193068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e39d1fc90ef88bbbef4a64553a8a9f6115310ae4ecf32b882a4ff2e80a5554e
Date: Sun, 09 Jun 2024 11:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717933642
