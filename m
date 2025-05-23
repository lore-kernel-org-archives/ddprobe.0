Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381F12F3E
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747995594; cv=none; b=b5tTn3ZzAOOwprgIIAvc+x5GeuYzAU8wWXGz3jIiyuZWeGj1SmMvQIi2NE+d48sw9ppvdy3TNwrANhmIOEMJRJZIzZoxkz7JjnFb08in+sPhMUYy214+w7VQb8NSm4TpYRbNV9v4B3mEThgE2E4fTKvzatpCgcP4/1bPyqW7/HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747995594; c=relaxed/simple;
	bh=7w+0l0Npc9AYTtCSuvnoIGuK8V7sg94jgbj0IC1ltT4=;
	h=To:Subject:From:Message-Id:Date; b=T3v4P4QwJOxMEy1s0r1xm9VMgw0N1N0zI2SYsC/Fdd9zKeSfwguCNhEKYwDCIrZTpD8PB4X5ifmwXmfndoSspdwGrjnOc9x/nxpwjMfWMbXqxRE+nlABqI1k9UW8qF5+0bRlxeDVxCFsDzzpZ2vJ7cR8rY5/q+PyvARCI/kzNh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYqXnOr/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYqXnOr/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A90FDC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747995593;
	bh=7w+0l0Npc9AYTtCSuvnoIGuK8V7sg94jgbj0IC1ltT4=;
	h=To:Subject:From:Date:From;
	b=tYqXnOr/IgaPzVrmnlWsIIAicEtqYnhnpSYsPbZA6Pht9A10n74xH/gZz3cJGubkx
	 4or82uBHtmAKLauU6LsNOyg1yhjwFVv4BsUl6qPBAMC/37GvWW9YPkQ/+hWxx2AfaV
	 cTjg5dN0vwdhX6oy2fq6s6NcdIoJ/u/ErCraY0LE190utGhlVgE7Hhx0W+Vcsag/3l
	 YkSk+EGipFj/KR+F7QhJXeHH9A+QiU2xJpokuk43Lz9ysilKD5NJF2UFNa2+B1ZsFf
	 nEgIoCGT6nKzqg9IgYM0DW7Y5WKds6ct6vG6+3pwr8W+wP9JATAR5Z/xeVubsVHdpj
	 QLazanYCKIj9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949CFC3DA6D
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174799559358.5368.9312783196112870372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c3775784e0400320391d05daf37aa3eb49bfade684c1ea0b519cc698a958b30
Date: Fri, 23 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747995593
