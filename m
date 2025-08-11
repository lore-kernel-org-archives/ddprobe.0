Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1FF52DAFC0
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754900994; cv=none; b=GBsdEDxu9woWp7rIHWYe8P9XefLGHqDWdvKmidY5Tm7FGt2xEJO0DDnaa64rIUfqY6oA6hEFzNmo9bnOu2wcxHCiptPKk+EuW9GRdy9hfsaFsxUlmbF68WV5nElWIskCr5mu5ndw1ouHV85VAeqgArpdr0DCg6/KmVtqzfk2PVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754900994; c=relaxed/simple;
	bh=9ZALMExWIw0XeVAXGfZIHKLTry7B0fM9KRIhvLqrYBM=;
	h=To:Subject:From:Message-Id:Date; b=FaIbFbyFCeV/kUfM1lJTZ2ntvCzpCffmqAylVkQ46+bWbDm+1W9Z+ERsLRU9+DVJOKMo+NoxIoJ1a5tPfxMrLY8Wj+ymf52YA27WO+bIXafJsbNSAPqYuJWE1rNr12+sVXVqtgcsxiZ8SQvgPya6QdLiYVLvLbg7/pdcBrQwKOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwlhPACt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwlhPACt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAD6C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754900993;
	bh=9ZALMExWIw0XeVAXGfZIHKLTry7B0fM9KRIhvLqrYBM=;
	h=To:Subject:From:Date:From;
	b=lwlhPACtvypLtmGwdYFNlZtCJmnnIIrabC7EU9h1O5xkQsKhFWcnGVSDmTGwliVE5
	 yTYXnGR1LDQcwkeY+C7Htasx0MhD4roBFsr0TmQRljFKSurOhnX3kqiWSeadCEUg+I
	 5pElxQpMwDVaxZDGBw53rcj8VAn1fZX2EfMSpSUptl0eTsuJ95dvAQ35Ut7lcwlUZ7
	 rV9KvnO7XwOm5eeKZOA68kGDET0c1/M07uvwY6Skte9neHTtzwoL9ZKZy34drcwtn6
	 iJlNY5RrzIZ8Xsrn9FvKBUip1aWXn83ynYv8JaHTn8rPTgpzj1xH/5MUli1axJyBXE
	 0GQh9SRR56HkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA16C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175490099358.26225.1981841391333649784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2204994b948712d37b6b875208d5572d37045caac6123560ca5fcdd9c941db8
Date: Mon, 11 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754900993
