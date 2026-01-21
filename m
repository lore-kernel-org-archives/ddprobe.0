Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF20296BCB
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768956834; cv=none; b=cWHXYpUYMg2HSBOkh/kKW1eDwv5ludWmD3GUNFvceFZ3eWoHdqpy+cL95bN38r/UaevhOsJVvWQGA1t8EeMsMfxt0Am04Hbxijz8A6iSgXdV4SjvBnaBn9iuCpMa/OZsbakXXTqo77uv0MnbZlGLZipBHHWqAe3t9OuwHymoYHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768956834; c=relaxed/simple;
	bh=zR+of8JqyMLbW28hdyW1TkBJ/OrEqPRd8aMsVQ6tG0c=;
	h=To:Subject:From:Message-Id:Date; b=YYy7xtyO9KdOMhbU/d8/JJLYH0N2NPlu3Ui49IKpIwFuIWKUMyv0GXNiQ/y2jZ2htiEbjn/gxJSyF0dbz4lTvj4mquIjPUoyPz8ZjSekERbkCCHHrNSnI9RNKK4nS7r9Lua0a8fQsY9mJS6QkJ+LPBuS9+AyFBfB6pUYCuH0gjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5ETWXYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5ETWXYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AF9CC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768956833;
	bh=zR+of8JqyMLbW28hdyW1TkBJ/OrEqPRd8aMsVQ6tG0c=;
	h=To:Subject:From:Date:From;
	b=n5ETWXYP6DRHslstgPoaggqwaZPa0W9+dY+XtMVNY4pjkAHY4cP05oc+PCCSdL0sr
	 pXIxYcYbJGUNJfmEgHeO3c49yJXbIqQ14AlrqTYkjhrPZ53anIm+E8p3PgqqJysRog
	 g8uwPsQ8NfIr1iG5sa9ubC8lBWe5veG9EC09unZajXYW9sYfMHOxsG6MFN1vS2Rzze
	 NwxFhQBy8NW9d9r+xmecHMfOlqrXrPI+eQ2/FMUj/wPAkjubHFuH02IKygQnwY5wq6
	 40aRNmI681Bf0eHMixdoZomXWR9CyrFzIi3eTdg38V52dNJK0/7kQ9gZ0tqcw7782A
	 XK5u1mzy3Gkxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B26D2629F
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176895683358.4389.6747021104197467633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5984e6f0d4ffaf78032e5bb0cb6eee8b2fdc2f4a91f65fd034f1e9943c4e6d2
Date: Wed, 21 Jan 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768956833
