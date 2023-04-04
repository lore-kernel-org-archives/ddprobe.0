Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEA2D2F2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 21:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD4BCC433EF
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 21:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680642425;
	bh=3K17rDkT6cJnmiQJgx1x3bquQs3DrcTcxHaFIseudHw=;
	h=To:Subject:From:Date:From;
	b=QhvfoiM7UAIPfOPjW69wpKATt2Gn2MDaG6p5FKz2vIWd94kDQddQkgFNmRykwlnfm
	 kLyxT/M0NqFHTilzTFmta5bN59OLzWOxm028CWkbLDA/RPl8XghL01cDRxfZaKepYb
	 Q8ea0md289BxJzIuPz8xfyotgAK20iEzsYkriU9ays9N5fqYDAaz0hvJsSN4blZSfd
	 YOAreGAADZzwriuqlUCTbX+k1JSIGf87qIPG5NbEkeVu2n7F3J4Z4KywXse85CSdlZ
	 q2Zm0NYv095O29vNLcRe4mDBx2yuHdTvPFCfiG3LZylrQb3JCBQLkirsaR7KNAFFUb
	 Jw/XOAvZ9uKeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D8FC76188
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 21:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168064242575.19009.14247781961451464614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 706c827fc3a6688296f9792bd21fa170a914c684360214bd549c1efd05a01945
Date: Tue, 04 Apr 2023 21:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680642425
