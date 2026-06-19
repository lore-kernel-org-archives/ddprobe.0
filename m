Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B132340DA6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 19:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781897794; cv=none; b=jORPNu76Uqf+JNGpnMXN+jxVz5tvTY1ANyLnc+eY0ZFu7nSowIPBF8IfFvN1Q87ExpGJoe/Kg85LFl5phv6qe2WLrwCGFoHkOyxSKDw6rAMd/gdvRPWhOstwsoUdwosfc87awRpZj0Nbnb8FioYBzuU1/dCvPmhYdNn8eK1zaho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781897794; c=relaxed/simple;
	bh=l0Gs7dOI0f9sihGF8IOSBhzZqKZh8ciLBh7TvxIVD/c=;
	h=To:Subject:From:Message-Id:Date; b=TBmBnJKXD1zpq5ZB8PtMWG58So5tZyx7Fo5AyB7wLk2aJj0hzlIE3Q4bAC/8XZ4XKyk7oJKtJ/IPsafd9s6YPJ0bqQmNaq6TlT6sVlNtRbgSlHKalSLqPg19D4XHfVCxrOKQVleWLcsPfuBUdQGwM4vrsT+MCH47DfQ+99i11qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9f1ehSy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9f1ehSy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EF5C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 19:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781897793;
	bh=l0Gs7dOI0f9sihGF8IOSBhzZqKZh8ciLBh7TvxIVD/c=;
	h=To:Subject:From:Date:From;
	b=m9f1ehSyvQqVFbGSot8tK5Xefmp7XFzcQIrnOXt5BbHvIcTZzxbG5sepWh+o9P3SJ
	 WzdEn84U2GfgwNN2gcounXZXNssVaayg7xa9CqDKWm6mHAGqAZp/MiapTK9Qq7eYAB
	 lzuCKuaER5bcjoGb4ShRUD1Y8B6chX++u/CIjhRNJHF18iKQ7q437gKSS+n0miNW0d
	 Fz1JvkBD9pVtkcwbbI8QH3q3pcYzY9nabQAW7ChbYzoowPSXRvCHcE1Rb4ZdtlGb8C
	 /eo1izks8XbHJw6mzrj8xhuLmXxKCZym4uBHxs4ys7TfCmH6tHxMhMBgCNYfVXpPOo
	 CcJeB8dhGyGmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B760ACD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 19:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178189779374.17039.116582938855467361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361f6efef6fe4113cee9221a519bc5deb1e48c23630fbf01b6114fe5c40ab90d
Date: Fri, 19 Jun 2026 19:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781897793
