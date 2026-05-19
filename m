Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEDC35C1A9
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 22:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779228634; cv=none; b=g0EWjrK+CGKyjCV3vLkTGjEoTqoWXxQyss/MkpEPQMtP1EOEYGpA2TJsKWON4Fk3o7xPVGFDd/rWbj6jwzQn0QMWzxsIsoospOEV8/aPSf26/xuTUDq/JZc8wsloOnNzO/OO4/H910cFWPP3fL1fiXi1z7r7Li9bt2LRunFk4CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779228634; c=relaxed/simple;
	bh=cyXCKicuHeh8IkMLT+m5TUc8UJBHzCWutg+h5Ndjut4=;
	h=To:Subject:From:Message-Id:Date; b=srW9xHht34jHdLhQrz43MoRp1oqvRckJCoxdkbZMcMcDAXOgXYUWjayUJXqPBFFGvqjdefic90dCZmM+TtpBoajlHBnGKzkbFx1xjOGV/BZQm6m9oNugz5TieS+zX1wK9tFqBc65J0KpzzOsW6BYK1SwTNlD9syBUyE2UrKdPJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7lSJQ60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7lSJQ60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7197C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779228633;
	bh=cyXCKicuHeh8IkMLT+m5TUc8UJBHzCWutg+h5Ndjut4=;
	h=To:Subject:From:Date:From;
	b=t7lSJQ60D6PNteOBSSJiuTcHljfYG2+xJ39X8+jE6WKXUoHEQ9rNoOymVP6kqEz6w
	 0Opf7WPFzrh2gCqN42h7qpfx3N+ON43dhTAQPKLsRNiMh6kfWutZZ/Xqq8ZzFz26nh
	 89sDTmyBdRgz+LJf8gcxyHMOYgKk6oFm5DVoRvvjym6I24LBFDBc/4ygQBccSFBnD4
	 ro0Yb25QQ6+R46rIdeoc5mgmNMdyg6H91WHX/79eQ+Q2rKU6sRBLeThVGeClQhAs27
	 4gJAB3crp0tn9WNaKfneCdt7BzC8ofQlxvJRwWM338hHkLO/1+7Y9RfklURdl3Cvte
	 528D0LHtzF9dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE27BCD4F5B
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177922863368.29001.1798224233774034077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb759544679dfa0a84c4c5369117bcfccb220108ebb1ddb76377c64f0cb203ad
Date: Tue, 19 May 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779228633
