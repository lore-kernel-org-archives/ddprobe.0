Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B851A6823
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 17:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783445914; cv=none; b=d0vQn0JetpLL4go89PQ5WLfq3hxsY+C9Mz5Z8SKJq6Bj/c374w/3FiHrIK9TewgRCX4UmsF3syhAmjl71SYyktQ7oVK2w83MHVkOTvyoV6d0Vrxz6DSAkLOblMCTJdNg/f6IFYRnA8ITtf7kuzNetbe6baPZt55TerDqjOl9xY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783445914; c=relaxed/simple;
	bh=Heq9JnYKvtEOXGiAl1AUm0TdK+ikvj4Op7WmcKU3jXI=;
	h=To:Subject:From:Message-Id:Date; b=GC0ldpeCbPKE47W2wbi2ELBPZ8I9NXV3g2+sd+s2ktZhXw20Yp2n4XHIPXh3MxLlQPpmSkT87WzCRVz5ITXFOrKkgwYsHmzWXHHu1ZDB+L856gJyp7WqPObu0qzZHTk7IGkSYna2yzo2/++k2TPoQ9UaX4I46Ey5I5AMiiefon0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpuyCiIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpuyCiIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9E9C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 17:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783445913;
	bh=Heq9JnYKvtEOXGiAl1AUm0TdK+ikvj4Op7WmcKU3jXI=;
	h=To:Subject:From:Date:From;
	b=ZpuyCiILej3skBiO6Dhneeyctwtxr75O2ZwPig7yEwO++lwlLiuM2WC/XMiplGEpe
	 r4n4kMZxaexoek+UXnDj2E52pPNWqMk7yO4H1drSJXkwDFUk5jnkuaTWcvZKHkdoZD
	 S45vrh2YOu768XiIfhEfEVePMfiRuk6u2zo/Y3I0A2ny3f8JUpo0VSD+RBpOu8M7Km
	 gHrAAn+h21fFiwGuM/4T/Feow5NaBxEiO9/EsyYFHAkuL1U/vlcmMC3OdabTDC+qL+
	 LrtO+OjMUzCYeXlcYjqRlgTVWHbZzG1qqwvu3Cv0PrKP+4/BYqpRBiWYlkqDdJRjG6
	 wFSSJUr4zNYIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC445C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 17:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178344591368.7747.16046676290800685538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f87b1552ec71c6e1d04625a7658fa8e1b9fe1f6f7a6ef45843c9af14a01aa3a5
Date: Tue, 07 Jul 2026 17:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783445913
