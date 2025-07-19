Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0AAA79CD
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752928794; cv=none; b=NyBE9Q/Bjwzq8gTPBk8N66sR7IthStIxBJ6IL7kTHGvonK0CBWkqs+ssIu6kQO0cxwq2NLNCw3+06lh/UranqGMlFkNuJdYA0O3EApKXrM8EJWWqgkOLK5mODfuz74mdaqrQo7IvMWBAAllAdg50KAzP7KIYfRB9hO/FN1kIQFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752928794; c=relaxed/simple;
	bh=2SeWD4ZXk+gEl1ubCcqvkOO3DxzZk5W4wGcMVGWxoKk=;
	h=To:Subject:From:Message-Id:Date; b=k0FnfTHxRFxYxoGZCUcwAcP0+zzXot/4LO2YlcBI1mM1Z9ocj9LOrxW2cBZ4gQsM86x9gAZ/hpl5PgM2PBhrat0+VkzXzTjhYgAfTnCMS2nH73octqfN7/bLF7or96N/53GUMTSDD9hE3E1Gu3y+9c6Q6O4MXUUaT9p1K699KKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NyGlAnnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NyGlAnnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3572C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752928793;
	bh=2SeWD4ZXk+gEl1ubCcqvkOO3DxzZk5W4wGcMVGWxoKk=;
	h=To:Subject:From:Date:From;
	b=NyGlAnnLdxLQXOH5U3tv4Z+AH5Gmc000t82Cv8Zm2NePrIZwXgIbajU2l7CWl4abB
	 QIvLkLxdg0p5hWnRYcqLT76wiEVgIOu+LYGxzzgqSovd9ApgzUTuVp/mQAfJBKf1MV
	 LIdUU1Y13onep8ktLdwJ5NkdzClZ4+9GwPuqbfHBVXemKMvZO5pIJ2JN4nmkDnoUn2
	 Z9DDEPF4OnQQ7OrJ2jN4/JPOULy/kG+XOx5tOG4fLWRYN0vbmDoDWm3rETsK/runQV
	 dQf9K3j4fGvpgqQEjhv7xI9twAO9uMstQ5uPFwoui4oGwFGg1UuG5Hk/znUcdBgrsO
	 7TbFDMstuNtJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91407C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175292879357.20437.3339487600385361576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f54e551561927d081d460ab8953e671be1e6e1e01d906948b5026a10a211000f
Date: Sat, 19 Jul 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752928793
