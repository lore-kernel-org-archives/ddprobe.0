Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B226423E98
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786384834; cv=none; b=nBDgzJDdpG/q47DaWVDr3t0qPpezEQs25blZprK8mXOaXhLuTTIojRsV1lRpGf0JytjaUqbMaCnlU34r1h/aZXRuVzx+5DLNnVVP/l4jxju6P1xu+wNj85SYTdKLL6wJ9OJ6nXW2eVajVtHWc4/tH1yIClm4NQntsDenFZtITJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786384834; c=relaxed/simple;
	bh=um5C1YYj+eLLGuTQe4mW0ULk02IYd/ZgYYzaghlo6e8=;
	h=To:Subject:From:Message-Id:Date; b=dZfzAPSwNYD9w9V9K4ypkd8TLBPnuXu0QiPpY/dX7h5stWKc8KHRHoIUlJwSZ2e4TRuENF/0wGRRNfLgsLU/FmWVIODIbM+tAYw4+zL2NJwNfoyt6Ez2uZvb/K7wrMs4r+FW1U/O28qw26dTLO7Q8c9g4a+pM7UIDpv9jZYn+xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Br1C0I4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Br1C0I4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC66FC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786384833;
	bh=um5C1YYj+eLLGuTQe4mW0ULk02IYd/ZgYYzaghlo6e8=;
	h=To:Subject:From:Date:From;
	b=Br1C0I4wD+wWCnTH/O2sBfz/YhdyXd2RdYj6VA5hlXqsx+D8MXPteHQZ8ekcbI1t2
	 Tac2umQF0IKVROQLsp27jm8q9q7L5Zf4Lxk2rd+NPAp5dsSC3hX18HlHJr7CINmFI8
	 jseRFTO/g1cPOKKEBc+3U5BsmzQ5CyQyo8vgQvuX2f0j5qmTUMNeLAOyo+545Xphfb
	 mJ2E4lQ1BaxNdGTrSCguzTyej4OAZjB9HQ/2ISvXoi9c3j9GItR+Uh8LPVCxwyHY0h
	 lSBwI1LNHdIdKo2gstWsGHcfUXVYq9ZebF/in97pMqEBgjpmRMvMzwdaQ50BAHMjrg
	 Aq/3WX3ITr6pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF53C5AD7B
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178638483369.1103.7486306668457914504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff954d8ad88db35cf80e9d417451c8c5051edcac25c73a74068762e077448690
Date: Mon, 10 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786384833
