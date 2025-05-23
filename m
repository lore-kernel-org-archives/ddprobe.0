Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B3C101DE
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748014194; cv=none; b=t5xdM+9fm/wDhxNQw6w2haUGzv/Ctce9GJj88yOxoEphNoAFJ7m8K28yysY6doTnT7JxH5Ljen74+fDslkJqxWncU/f9EoQqmAhMJx1ms/Bywz27bO5cp8Ob5Hn/johlzwck+8eU4PEJVCIflJRkRU+1P8dqo1SzoxX2LrdjUuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748014194; c=relaxed/simple;
	bh=WhBXz1ZrV5ZK1eJaP0eRAIJNtlXY/QmBL0A2erXFxLU=;
	h=To:Subject:From:Message-Id:Date; b=IQ/MwwylgtznbRuh/3nzmh3ULCDmjOulB8JrHmokYP75yhhmgXvftJKyqUdWT50biOkCbJgNcWnFEBEL7ysyUbVrylrMijfvcIhiuxgn4HG4PzVEobrV0Ask0OiEZ9Ts4Aco486bQKlFHVrvQiv8Cz012tW0EUEUhfngjWPh4fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1KU3uIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1KU3uIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1274C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748014193;
	bh=WhBXz1ZrV5ZK1eJaP0eRAIJNtlXY/QmBL0A2erXFxLU=;
	h=To:Subject:From:Date:From;
	b=q1KU3uIUD4yLdDgPYA25ZsBpzTpcLLanzknrFGyWFWruLxaR6QTK6syrBYVeQLoOQ
	 iwXZ82ek+8YfxwUAJWW/4oqyWeFXuotXXH2+nk0vcdDxehIAUQfLiGdgbijgOm4b2e
	 wyEKA+mnmAQF/u9Fs6yRg6aa8SknXp7h7uoUrpiQ3PLMsk/2EQvuYRVtsYUZeAB8fj
	 S3x+0Og8t8bz92LeNd74sZ/d1JeCjiKND5Kv3Pq/yWzIndYFzxOXq/UP5h/eT1x2JA
	 EuW3JUWk+zI9RLFlumasoe0yL6Hcz+gDVY/XeJ/Jc5PIK3I7OmWrXo/DK49TgIK97n
	 IeonnmAzsBAAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914B4C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174801419357.13273.18256155468508386053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf0692fd84534465b1462e54653007d8b8398ba20270a6ba26b5a42051287962
Date: Fri, 23 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748014193
