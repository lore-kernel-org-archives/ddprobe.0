Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E547096A
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AG3WjScI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BF1FC433C8
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701904096;
	bh=3aq6r2bXIS8M1hGza5hqlDf9UGb3eqYepWsRFJXsqqg=;
	h=To:Subject:From:Date:From;
	b=AG3WjScI/9QtEGjv94SUp2EnDK/QztX2H1kQMKSWb34cTpR8VVlgZ8KkUybroS8L/
	 EwDmAYiXxxtuB7MFp1Mtg1QjhE/kfem1T73rPlyFQ/n7r1BJ+cSrz0WWFXzf5DRLtE
	 0K8rd2xPM7K+oE2ndj5gKJa6QJur+/rDDOEQJC08fh0yWZcTjyWkXM+XTEQTTpDaxs
	 MkRtDyaK1ozNaUhvdQSxrQnPoIn0JU2K5Ed2QdEUVaHN5O/s75cal+DAa3R2AjBjgC
	 knzmH9sckFGKijKlMJdi+4wsilGTu4Oa0TuI81yFUEHe0nhHiA63oRRcX+qvDRyixn
	 Frfu2fVhTM6GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65412C4167B
	for <ddprobe@lists.linux.dev>; Wed,  6 Dec 2023 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170190409637.23251.16364684044456197573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f36b71ab2962988c094ab4709a67e70e32cc56a469c5e2654eacd2ab0c87b683
Date: Wed, 06 Dec 2023 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701904096
