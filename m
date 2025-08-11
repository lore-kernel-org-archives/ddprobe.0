Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC711922FB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754876994; cv=none; b=pXYHQuhwWrWt2qbzMmqyJ5hX1slE78vObH3lJlN6VNU9xkB40ufsechTaYmLEK3tVvUjCqAmkDBZj/HsEYY6HQtCBUUzZPjDVaRK2oLqyk6ZT37Ya3IkU6k/DnLeDvOtu9+wYAMdjC8qodBPn0tQ6Mx7p9LjwgWyJ5e+wMtyWkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754876994; c=relaxed/simple;
	bh=w6YJvXZJWPRj4j6H0J/MO73L/lWn1eI1hKb0rcFLD/4=;
	h=To:Subject:From:Message-Id:Date; b=qPE3v5GtxkBw4/NbvTDvBBZsPPz8HLBv255biEOOs2JchI/4/XDhmo2clwKtOpVxGT8yDpdva3XJrsXt1S5+vg0jXCntAIYTXXF22dfDjrfLHlWr3HXgdqt2LcPj7rrCVmsgVxHp4x9IsJgIAIvFNzygadNBUW+KtQTh9PzKcBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oaFbEHrE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oaFbEHrE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A051BC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754876993;
	bh=w6YJvXZJWPRj4j6H0J/MO73L/lWn1eI1hKb0rcFLD/4=;
	h=To:Subject:From:Date:From;
	b=oaFbEHrEgHp4AYUWPuMjH9JgjttrPCXkXFi3JdFpK0FF3V6DTzP0e8R4WUUESqP1o
	 aB/zvlIEoJf5xHRM+TEEScFL6Mnfxv6K5vTtuG20QOGfUJ3aM0aL7WgUkc2Gqnad0O
	 855b2WDJ+bDO+2s4HhCmOopIwl53qqRVotvicSFdK3Im4YhISskK/A9RiuR7Oo+ALd
	 EqGYemTgkEFUByRdk1KvyJHd4I2ohKIgKaKqC+439JKotnSu/BTVypbHNY4YaJJvAN
	 h5BL/PZk+upnOlYV2PzFVd3zVhi2pbcfNksDvQP0g1c4SBi7v/jHhbCbbdg72xf0fr
	 91XfxCe+xT9uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3A3C87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175487699357.22546.1388978062739846731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cae195d89646ff156a19fa566638f64d536aac6fbaee90f712938558197440e7
Date: Mon, 11 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754876993
