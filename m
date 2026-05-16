Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BA2355055
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 11:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778930434; cv=none; b=Duefp3c8umTD0u2YUMwFZBfJKWAvYIsjMwo1o4RD2pRA9j25Prn6JLLztOmFC4H9o8ZOrk15h7Zv4QPtqv3qkB/CYE+tztUjQhTHB0QXmPDPJKNyaVjVWL9yKRrdEhfBiw+GoWmVdL/6beS9JkMymKQYne6XLz3uTVNEmoSaZAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778930434; c=relaxed/simple;
	bh=ZXa719jUSG2Iq7Y7lJYYP6L2+d84eXJa2z/1+ilhVd8=;
	h=To:Subject:From:Message-Id:Date; b=cNnN5YDdhjOC2lL9Mq1qptIhEw8HJHaC0MS9aXBDUiwUH59JMD1/8BGH3+v8EpkzpsrgTIA75B4Nw3c3EUH/WrJ8VxWv9PouwhAf4slYNFbixqwtwn7y+jS2I8XZuRpQ63sGqmRrNqG6Oc/hfoXeKX9LUnL7jUIyai+OGbWgRRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R71o+y29; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R71o+y29"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE31C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778930433;
	bh=ZXa719jUSG2Iq7Y7lJYYP6L2+d84eXJa2z/1+ilhVd8=;
	h=To:Subject:From:Date:From;
	b=R71o+y29TLzC7nXg5SIU6vr2MzkHazp4+RK5eOoCMmunGBO1Miqlix3yE4AEZvhCD
	 97ZucGlT4Y/aZf70gGeILkGXMffXrideuCbd4ZOXTAPvF/VLd8+J2oKz+SCifDG+E9
	 PT0zDvW1teyXzMzSjtJVImvVePZ+QmXnfin4bkEgON4cYKSbQVB0QhU75+Z6nOLC71
	 JhtaJuiWPTZ8dAy/pHTVPldBJEO/+UsRl/jNzPOykIPUxU291qN42hACqJYxPcW8td
	 9SUzuJ9W9NOeHAQHvTDUsaO4DRWzEvqLx7jOq3szSltWVolcmZeDPnBXH7hqwwBcwv
	 Kj+LNVWCyEGAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE6F1CD4F25
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177893043370.1648.655796610419953214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8aef7c3a8e2edb3b80cf9a802a0986cefc0d6d7521869713702fa4ae230be9d
Date: Sat, 16 May 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778930433
