Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56EE51F4CB3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784871634; cv=none; b=HjKrd3vpMkRZlmR09qwLDWf7uOhCnCc3avytth0CuZ2bXkWtGlVsqli6OV0VryfRrM036rDdP/19+cmFCq/tIirfv1T5K/JR/abVkdDpLU4m6Cw6+1dH7ZDoWUI0+gtd5UhUmRzQe3TQsnBJdh58c/CRX3gH4C4246VAYBnTsK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784871634; c=relaxed/simple;
	bh=emHITnaibHLmejXAEUQX1lJhzPTEywDlpfwS+PYjc0c=;
	h=To:Subject:From:Message-Id:Date; b=mHJq4pYxWOipPkuCEovMfGCgmHUgoneOj1GdEP7FErVKydHSu5jKTVlYpCncMnjpUIk5RbgDSmg8B37aXHV65H6X47G5R3v9239Itre0YFAdR9wRyiXW0934+WBWcUv5xqpdA7uEX2y1X3ujUu9JHXGGzbjhKNZr4bG6jhl1Re4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEUlN+Op; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEUlN+Op"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D58C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784871633;
	bh=emHITnaibHLmejXAEUQX1lJhzPTEywDlpfwS+PYjc0c=;
	h=To:Subject:From:Date:From;
	b=jEUlN+OpSykazHHYa+DqHa8ZjEygUmFoWwP8zbVmzmn8T/EH2BkZbLSrvsOogU/05
	 eGAWT+h3g30D3k73GYydRaXjqSu8cMuplGWHJ/zcnRotK+Cl4i3LFR6pehr+l7K805
	 Onm+olSqbMXZ5j71wl/tchXCW6pXVKaLIZQyPeRJ/1V2LmNlSBXjMrTEJv94Sk7yNB
	 QvJax3GBw2fKP5Lbui02Sj8rFY8dwnOyto1IDpmNTLvATOvVgE7Yj+VEd4STKcSYRJ
	 HiWu/tytqsqqdvitqGcWiAbRVQbOWs3s/TokT+YPPe7jsPTDdz8kv2D5pDbL7+Lvbz
	 ENc+DpQBpQErw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFFBEC531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178487163375.10092.7603011171681647105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb580f8d889a997ffdae1d543c132669a98922f35502c54ccbd37c476d7ad03
Date: Fri, 24 Jul 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784871633
