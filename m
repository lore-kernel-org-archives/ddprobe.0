Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06C91844
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 759FCC433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669528854;
	bh=IDhPpvk5/EtN3n+68TE3J4oHxqRWgFz6QmPdRHkISL4=;
	h=To:Subject:From:Date:From;
	b=L7MedL0fFt/J/2ruqKJMdQv1SHIcej4yNWF2uI1lFSD9gZp+2qzuVqfGQZzUhvqS4
	 NLFGK2nwynUeaw6H80rS0C9WQ59OPIcPCSf1PbImQIT0fnpVmgUw6O821OLgBQF4U0
	 XYZ3HM28vAtX0SYhGvKQl1ewD71BSJZBUv6XHuzVPtu3bkFOGBNkZ2hVqoHA8TEfT+
	 bQoyqY+3N3Uu/kDHBtgNuKpytloHZQZOZBWF/14t4nvbjuSDEUelojPEFO4FUJj+1m
	 p29T6k3wJGqebGIHVwlpKEnKIiMLBo8OJnSotJ7vgZFyHvpIZbvFIAyAusn/pODgnw
	 JPkq0Kz3CgH/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A4AFC4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166952885433.9467.16879927742140597233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f9501cf71cada2f17d2de1bba3f3139da338ee5453efd2d4eb486c184f0b0e6
Date: Sun, 27 Nov 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669528854
