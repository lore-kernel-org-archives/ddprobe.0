Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C626028FD
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750430394; cv=none; b=f/7Jc5T0vfRJDrzX3MxOv914x6BPX0XFvpkXaCG2+gaeYcMwf2DULYgKYM/OKfggkWQIxZZXQqMYpbMwNVQljB5G8ReUw4lQimi5Pjc00jXmetqwtncn9eEkS0W+6nCDQSbdsHd9CYf+GRzwaQvIM+q0kgR59ZIw2Wc2r1Ob+Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750430394; c=relaxed/simple;
	bh=tyFlHWuhpJ9jlhPgAlF242G7s9YSnEJLatjdhPImAuw=;
	h=To:Subject:From:Message-Id:Date; b=oQ/TvT3TUExIkhAXY4Rwact3RzVwbfs8lAl7lcR3ZkI+SGmW+UtaceW9RGSTs4elUuJa4EL/p3WXLCj2TV/IsefC5nflVtTL6ky4Q9GefY6WewevsYF8O//kTros0U6Srcc0oJbLyxDhKMY26jLiCELJTBpEp44j0y3zriElAsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yk2dY73j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yk2dY73j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC1EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750430393;
	bh=tyFlHWuhpJ9jlhPgAlF242G7s9YSnEJLatjdhPImAuw=;
	h=To:Subject:From:Date:From;
	b=Yk2dY73jEccNkC0VL2KE6Ay65mLCBO10CvCKG8dzIlZpEyriq7QJU2dub3vgz1tmV
	 IFffU66e5ITSONKaVytRrH0vjsp0nooi+UUcjOWXwEHC6DYuTt3UkCgqIpIVbKoNdd
	 QTCg//GZfvJ3TTM/lnjLKH6VXFW8bMQW7wOx4hT52Kn+Q5DJCrbhOfuJVgq43rsPkB
	 IohKdhjgFJz6QrenlRTOQvWLnvYkJaUEtUvGQvwzw6BkXehm0USiZun1R8gkuCjqxV
	 UZA8IjwEIMps805HF5snx7dmTum6tF4xuZ26NTT4bP6GvgaBJnDPmYDPo+vxOFQPmX
	 cg+6SvWpy6XpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD6DC7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175043039357.19145.3262561647993638656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c0cbe6e7f3f00aea5daa76aec3a6e849d5b171c7bd6948ec71058a2c606c61
Date: Fri, 20 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750430393
