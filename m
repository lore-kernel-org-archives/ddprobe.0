Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B12527D786
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 17:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781199394; cv=none; b=U+XRqCx8GGrxtktG1bZJkAhiqJ8lD+xUGOo/ukyrZWwBtEfX0gcnbvUerRymARiKUrSFgm2ZcmXOCN/WiNUJmz1yDBKd9K3GUOJey4lW9+CVqLi5mWKjOnbfAp0Xl7mpDxRwSfnZE4D1Un9aoR1YVUbx3YNKvQr8cV3lEWjuqQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781199394; c=relaxed/simple;
	bh=hOYTAWIMsxWR+tcgEBTTuHQZyUpjxaHvS1k3RQXldwM=;
	h=To:Subject:From:Message-Id:Date; b=iTHOHK70sA5SJCSOm94azlWd+K0mEdK+fni+UJPKD/ZQ/tUsaCNp0T1Uy3+/c12QYbldZ6kDCQnW2vZPateV6fA+zr6fPQwA7fAKaqVCSWQQfB3gmmUlZO3nIZCnhjQmTlZ4wE8SwNPwpprbyRjrVQXlWmob2QLi1glFuoLX474=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6Muida2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6Muida2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98C5C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 17:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781199393;
	bh=hOYTAWIMsxWR+tcgEBTTuHQZyUpjxaHvS1k3RQXldwM=;
	h=To:Subject:From:Date:From;
	b=p6Muida2u6ZVutl4zwE3aeR67EcTlReBhz+6+DrxEXDaSTSC9mRbV4m2AxVQgZyto
	 rGR06zMusoKQDLkVIhdGGL6BdNTlHkGIVuLNzyy1YsAOoQQbEFLKsn0QfhFsKOk7la
	 Uk0OgGEe1eZ9ayEiJv5zqxdeN3Lp25VO7CjBFu+CQvyOUSmra0JRZ7JOw7an9PBtAt
	 5Xov9FFChY1hQBAfoWH2/nRWYks0IS2DUcfxBe9AwlKgd50g4Idhv2U2MceVekCXeg
	 u7RRyqVVEI+FIIU2TkK3ffTZt3OUR5MWwHsUm55UeJgQw7h/X3TjiBuagsyMO5VzWk
	 uLz2b6N4+jgCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B53A3CD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 17:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178119939371.368.2548369339806491011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edeac83d0c9ce11088f119c1b4fdb14e50613169484a1467700eaa65e17e0b52
Date: Thu, 11 Jun 2026 17:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781199393
