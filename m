Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1865620
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 22:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88FDDC433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 22:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672181487;
	bh=H3Q8izPSZbE/j1x3sgebr47Amn1XrbzgAIUtA8go4pw=;
	h=To:Subject:From:Date:From;
	b=bo5Ng41I86OgfU93B5FFwFvogVvE7MUquv98DmpHMLu5HdArEQx+lTa2Y+gxU3GGD
	 MarV1K68R3VUXK9qk77U91OdL3Fcp03DDjSgmC364dXbUGTVbKTdUX7x59/b/TNnO2
	 /1rQf+8LaZjuVBIQ4w+4eYbAktpndtYu4owxH3Za3BJwI9kJN9g8eVZhgXlkstV/Jj
	 eAEfMpAFpaUmzmmpL/jPqZQyPEJ9lTEYv6/Mu3p5ZeC3ANfNiXIIMHZwrp8+2WUedA
	 0ui0S1pUm34JaChelw+Blq1UImT/78xg6AiQMWbVCuBjoHGrLbJTTk4JcbCEh5shcX
	 zbfXGFoaPKwZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69CD6C4167B
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 22:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167218148742.19041.12876966714780125502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc1da961ebbf7ae5721e274313453669774149cfb2768c0cbc0ee03b54489e08
Date: Tue, 27 Dec 2022 22:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672181487
