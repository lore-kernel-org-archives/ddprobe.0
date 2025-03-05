Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8BD25485C
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 22:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741213734; cv=none; b=d0fHoDwnMEzrEPg5nbujGNsrWsy9ejkosIVGzKs7FIreBfzKtpx16E/82zF8uFSjlg97vjKp3w7zCZJEvk93SQQG6B9IsGlVre6cUj0kQDIgc4MGA50z/+JP6GJ67utcG2bjph47L6tSNPv9T12yWPkTPsbM7BzGmA2Gw2C7Rug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741213734; c=relaxed/simple;
	bh=3DHBH1QfRbXcWvWyIszofqJXWTICTBkl0pUnc2XKAUk=;
	h=To:Subject:From:Message-Id:Date; b=csgrW9+gm9CMYylCEY78EVmvEfhcizw+IMI2gYh7z0STzdBd2BD7CMgjkJrhf699fixx/qyRGUHiN5K5F9FI4fQsBwrZf2zz7xd5LQ1aVoGDruyJgFcmhgEmFpqWfhzTKChYOcwMtE0Rextkehs8PwU+Rtxc/dAvYb/2oPS/XW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sV4B4pQy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sV4B4pQy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AC3C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 22:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741213733;
	bh=3DHBH1QfRbXcWvWyIszofqJXWTICTBkl0pUnc2XKAUk=;
	h=To:Subject:From:Date:From;
	b=sV4B4pQyBtM9VHi0jDHrkWKJSobHT8X7ZJ2vbeR1zpkMOcSlvDhiZBJHwW0mRoi5z
	 tn6nt9uye56GhQkdE8lw77JWc1w/zh7ilOkA+YSsEXxXuaUpWPHA0GvZLZcLNXeB8W
	 G2K3Gz9+z4xs5CtZfadU2CwHthMK36ykW32CAoIJ+wfkLYR9TA+9QQ+xQ778B+02ii
	 93nRVj1sOoGqv68kUQcb/o7nY3j9CnKzpoPnR+wGxZQ37rOmhFkkqOxx0f6qqxcf2n
	 lJzppaIOZ3SDt9N7VsXQl4jFCPhPJf/0/bLJSoG7vH5llIYI/mXCIlE+zWsyPgShyk
	 20MRCmgYyBSiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916DDC19F32
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 22:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174121373358.14896.1296259500937919460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e23512b346b59999cdfea79ecddbbc9910e96c97ec462c5160d198c267d417
Date: Wed, 05 Mar 2025 22:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741213733
