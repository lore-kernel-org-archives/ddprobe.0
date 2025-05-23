Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1521487C3
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748003994; cv=none; b=Mof5TgQ1WBsVhwI3mP1/CduhoW2TLhalBSc/iYVqaRTBGv105KBN/7D0Ff/OWuRU9fxAaF0hVD71ld6PfDoQjbenAEIvazFUGdOXy6PUGFCVdWPxGk3KJImOFSiMskwTUAyBw1JOUDKEx3MeWxNHvLtljFRhSpfFR4WHoLQrQZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748003994; c=relaxed/simple;
	bh=twgKouiMpS2qdpntdFZgoC9UCE6Ijwv7kpHf4RJ3Ino=;
	h=To:Subject:From:Message-Id:Date; b=iwcL5vGxdIkXqQtyz/hm5BIVx3qLgZsMh64bCxEAFd2pjgq61k5hWqoWBDfRYA2jl0la4hy6ctK6F7AaGxFmEjnMxJnDmFrVbwLECBY3ALQ/LfbJOtZHwqjUZjh5gkV/Z7ce06/2shyJD6LCreH8m0IrTZuzBG25zHW8zPISW0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Niy1J3a9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Niy1J3a9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEBCC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748003993;
	bh=twgKouiMpS2qdpntdFZgoC9UCE6Ijwv7kpHf4RJ3Ino=;
	h=To:Subject:From:Date:From;
	b=Niy1J3a9tFFUpL3NY+K44rIHqkmEP656MZ4MLEXkYVac4mEayZxfo6J8buWqOYKQG
	 /uQrM9r/HgWtXa7Y7K20ED5eu6opAYRF25LdS4nE4TJG2dUgkXK+5K5O1ttN45niud
	 +I+Bm5NzXoQmv723tdtfrK6Cd56pe7Gb9J8dPc1F/qGie8HvValIsL+FzjHmTM31Ke
	 3uG4D6zSiJuVlHwIkXo2N+1QBSPjAq1KcXbE2he1wwanQOSUzNVJ12DKok4KMMbm3g
	 1vcTHTTAZ+LffMmwdFwEhWit5IDlol879qBET31lB0WQ67x6KWwCeGucdvLbRMmXQ2
	 jA2esdogCjHug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA00C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174800399357.26588.7191531072435734106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e350bd89f0511a71cbfeaf0d6f02f001a768d2b92dc03539ff3f341ae8d91cd4
Date: Fri, 23 May 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748003993
