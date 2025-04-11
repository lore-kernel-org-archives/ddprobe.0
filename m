Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410B7213240
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744401594; cv=none; b=n+Hi3cldGro8en2+mQ7SuNjMKgcmhNkkco6xQU+Vise6ktb6w4ZE6aDu3U1n3Mc5CgoxUZbiQBD6YbWxuxLZY6NiVu0GQjJk3ZvEFY1I91uFDQ2R03rV6GV00qO/z/7oogXVqVv+fzINdfjkr7iEdaEWFdD2M3kumN+Xon4UfsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744401594; c=relaxed/simple;
	bh=JZMnLGbCERRww5cIusGXgjNnxi1IBmFI1B52h8Mnb+0=;
	h=To:Subject:From:Message-Id:Date; b=lonrfwfr9Yc5gWVuBRwF9/Kx5R8qvgXS7Mjcd/SmDHa0boc8exgc5r9eRUZ0DS6C+P4X5mydzLIf+lsZ3nq1+qxgJQDyoLjg+pPCVqLpx70lh3MYVxCwQ3csCCJabC1HCV++t4HM7fiTPpVqrZ9JuJ6UhGTO8Cj5LeRup/z4fQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxwlHWFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxwlHWFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B15C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744401593;
	bh=JZMnLGbCERRww5cIusGXgjNnxi1IBmFI1B52h8Mnb+0=;
	h=To:Subject:From:Date:From;
	b=sxwlHWFSg/X0HPIZBrl2max01usUW9NnO9qHhFaQFrCwWX+aQlXdD0whC5H7sznKm
	 aQOJX1gWpF/YyLarb4++k0jfMKSB1lGeWuZCR4PB2oyyL5Taco/iOEXCyadkMVu/3D
	 H8FtjMqat//KzRqRrFrLrWQzhNGId/CZKwaejwTOiRK++Hb4571zHnCzM93FzQIqgU
	 i51tbQzYXA9aQvSH7HHmsr2raHwYIYihF8GPlRDK7ti1zhTNZdj5I0St+Nuw8wq5RL
	 1dFV+VM6n9iHtwQE0BwUQ9YPYwV5wuGalLOIbkmdxUYBN/2JVYF0m0ttF6w8NvIq0E
	 exr4b6LyT+RTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2F2C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174440159362.6457.18006620629152003805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 452525270228eec13177b5653d459f76cd5d5edf22cc839f1ff9b997a596976b
Date: Fri, 11 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744401593
