Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BCD34A3D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772211294; cv=none; b=UjaO/pxz/Fi6Pxtsvn07PhTYjpYtnTeQihiqgjlwMsuNl3SmbYhVHTMeug+FVywsgbD1F3G0bQc6op6Vsp3IsCZyqcJ7Cfhn5tA+GfWRDAa/UTjITx4uWhbn/z3Fn6hPUaEKhImJq9aQIK8T0VEP0STYDIK8a//BDzuVePdy1KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772211294; c=relaxed/simple;
	bh=2ur+8WPt3WBDi+0Ikllw4evbTuP/H5dycga5Zs5Jqik=;
	h=To:Subject:From:Message-Id:Date; b=RALZ9HoS/AgSsbVg9799+m0tfF/sofivtGt0TfqWMZCbpt1BHhjvFS6LIan2AmzULa4k7+7qt015/uW8bZaM1RRwKeg76Nf8VTKZa2+7x4r/XWTSPIlns7Wm4ZnzF6JWssLO4KEoeuUpzAYKKora22TOT8y7R65HzO4rRiXmxWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/0Ane7q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/0Ane7q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E26C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772211293;
	bh=2ur+8WPt3WBDi+0Ikllw4evbTuP/H5dycga5Zs5Jqik=;
	h=To:Subject:From:Date:From;
	b=C/0Ane7qbjcYSgivtU9UqT95Y6La5VkR/dXROPrZLJLFp0zpSs+G8rzKoJ3BuB+uY
	 fZlZt/H2t54JZxEc5jE7vU5P9Ocxc/AOj7ne0KIeU78pNQ8m8uy3kaxa99UB3dvGf7
	 Bj7grRnscOG0lgloTQKGVUK3Kgza170NdKfzMlNhYCrjcFu/xs7h3vwMjz+LrEvhH7
	 ZeVxkF2fOcwDEsoe42AgL9l7EQOzZdnXEztbzib3B5ME7gfqltYI9Ew1A0WLjBHP4f
	 oZgVsxqMygllXJMZhD5Cszue7cFBRvibzuU1mRcKj2cTNr5R2CGWdfCJBfaAbtgm1M
	 KDjpkiiM6W/Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B18FEFB6D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177221129358.4998.9722846430329829624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be20558e1d7e54a44a068a438667c60214ea4cdf76d37a5cfec7a13276b97870
Date: Fri, 27 Feb 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772211293
