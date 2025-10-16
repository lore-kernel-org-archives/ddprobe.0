Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13228334694
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760635794; cv=none; b=o9s9bG2vKvFEH+UObXrWv8TZZZ8ElvJXCqvlVaiMW9XhPT7/Gl+stUPJxMcjiOQk/4fKCLNbxOY+mh3eHTWypIaA0fDhU0tZgCtcX1JTvFdkKr3GKGm/OoNp6mtrqxmwrxoxP/dUJ2q18XVvAnlfBsmtPbR1LL9rJmyr0VZ/EcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760635794; c=relaxed/simple;
	bh=Ohim16gX3nL46UCMjl8e2WboXW+1uDWi03XPdaq/tqM=;
	h=To:Subject:From:Message-Id:Date; b=TGnT8Hnu5yg67YCcFZza2jzK7fydFU1DSe4Ee7QdJ5Y0iM4fanjHgO4q2FjtWuXHPzZgPRFKl0VETbYQzbXoFqoQdNboPGHdt1nD9plBK0eBKQA4VSd3AY8zu+h8Ij5VLuYQ/wJIBMDaIpkD60I0kRfW/H4TbmbvPgXwkzW5NSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j10n8Zcg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j10n8Zcg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE3BC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760635793;
	bh=Ohim16gX3nL46UCMjl8e2WboXW+1uDWi03XPdaq/tqM=;
	h=To:Subject:From:Date:From;
	b=j10n8ZcgPQGi9OxzVoULm4VsQHXGumXEYorIT+kFz1FCYzk6FNabo+MPOE9ZG4A7v
	 jdygS3YqVQsRhdkZ8KEDq3uNpvzan13IQ7WlXpuIi9KqT7nCKZaeyNDoPQowzRKaOZ
	 NcTyyAPos0p4zIDJyIudv9Sdtze0W56c8Btx8Vf7lQJl7ij/In0DwBxm984hyZ7S1d
	 G0ckfDtqaxx2HGPOZe6iSRaAHYWDGP7GFd2Fk8fXB3UerJYKxP2f8TuM0jPm05Qnhd
	 JzsKCPUcx0MHhHDqKAIDAG3huYeHO+LNf5wanwxWQ4REUz4P4VC/fy6vYqxpQM0obu
	 5eqpS9TvRspnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90189CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176063579358.4758.781712543289119771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae6ee567c2398535ce6098571bed454c6c4fbb40218c1a35ba9135f2c823fd72
Date: Thu, 16 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760635793
