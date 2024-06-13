Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AFBC81AB5
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 22:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718317703; cv=none; b=cEIrN1NGu2Y4aNZqeRDk2dsyMaKzvjgNGKw4v3nhESK0WQB9xVbY/2CSYO+a0G7LacFdzVGlhudm6gUsgPSRBx1uoLAkyqoobVdT4x1OcOuovxVSCzUY/9s+/957+zQEY+QgoqpnMckD/uXKcEREtK+m2i3Oainqx/MJ1u1oWbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718317703; c=relaxed/simple;
	bh=kr4nToQAzXXg/Ef/C5gsI5f/4I7gm5KvpK7FQdhUCxE=;
	h=To:Subject:From:Message-Id:Date; b=b6u1zpKwIwF/ZGxMxyncZYSAzXLzgPGwDQJ89kMPKjK6/XpztxVuvg0QnixYowwnwqFxWsnn5GS8mdA/FNXxTJdHQGSZGIcINai5RHld+I3i7WpBRAzmci7c7A4PGQ3gQhyyF5B6uZL1P2idCOmcJklNk1s1U4PmzIkFZzyqO9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDoELIjx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDoELIjx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5847C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 22:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718317702;
	bh=kr4nToQAzXXg/Ef/C5gsI5f/4I7gm5KvpK7FQdhUCxE=;
	h=To:Subject:From:Date:From;
	b=hDoELIjxR+93PNz2V6Yw8n31lRO6qajcxFX9iyQ1BH/S7/UW16jFjv/6/oKG9g5oS
	 mwWItVA/aguRWh680M72WxqLTO+1n4CbfW9isV1PKFEQu23yrU61TKCp/qb9AXGjQo
	 bWXDqmQH4j+AbTwkE7+VGGFsf4EPFhsPlUNQNU+hDXA0rVg5n+GFUEr0MppAvw2ZOr
	 eAgB+TdOr8HC/ualiLf+WhyE2uSxkftKXdPn3OLnxbZhMq5LRtrZnwi7tVn7PuxK0E
	 ztHYTDXfCu0GYS+tXPx9rWt8JGjYjE19uO6kmLZ7N0oDNky0Rzq4bt0f8nhDVEwetj
	 GUEQ9xHOvhP8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD30AC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 22:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171831770276.28948.3111537075211992843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34fce9fff626b6474ddf6605426106e470da7136f486e76ad13fec34d8cdbd95
Date: Thu, 13 Jun 2024 22:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718317702
