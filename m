Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA1328EE
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 10:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1AC48C433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 10:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682762706;
	bh=bwGpQzcslbktdgazd60i8+mfK5s7HmOcltN6eElEOzk=;
	h=To:Subject:From:Date:From;
	b=DCQf9U6cTyclBzhyhcaJMbnQPxb9+O8aDMTVfhzHTEHCpz+ts20GIfT52H9OmaRTy
	 bFe5LQEQbo9jRkBo4lAKV0W1MNgWBfJIvvwgBrvomVfrsiFyNChDpm/ulqxtrZhpju
	 MxgD4h96ME0rOfJHHc83O0+UlIts8U2SCDZLrZdH1twwG1KeLALf3jYeCQDDPPKMVe
	 F0X1ZZA4AZQsd795fiJjlSovU2/hv8mnITOWO06zwt6Bxxztsp/SVdAEoTe8pScbFh
	 dQfaoaTazChf0/2HHV9SUtVgUwc8pJRROYbFZPBvXsNVMHK/l0fJkQ2oITVAhVT5LA
	 UPfvyv3furklg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7D79C77B60
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 10:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168276270593.23708.12080608114614277724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66b6494d6f259fad7a45de8a0f295d216218d825a366de3e338e1dba4957ef8c
Date: Sat, 29 Apr 2023 10:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682762705
