Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246B638E5E2
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 18:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770057834; cv=none; b=f7H42qi4KS95MhclneNkeqn89STO+jZnUnfq1VWazuuRblakQBraHh5CzAJ7PWBIzKAe+oEAXaq0BhgUrrA4EfgEuudL2vSyT7u0cMyuUH6m5KEZzKwK24L+v+eArRtn8sJLZV4GWxz4QKXvuadhX7b3mcuxZLDDrZrl/hN0yTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770057834; c=relaxed/simple;
	bh=RZNTgSSfdCi0OKiBiCGlokmB4tyUcGStl0Tj4d8q2WY=;
	h=To:Subject:From:Message-Id:Date; b=qRNDKIQOsYQqzihsWirIUt+aE+ag+wq3dSaEcawqWhhiD4pUgNgd6sULnj6KZZEdFn+SJnbbYamibboiAUlkNQcsNMPngNxLTm/TM3U7XG8M4SerGljSJnqdjBehBEaGSmkapjvxSLYhStKMMxkUyEOis2VjhvkUI/SOaPoPFws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVDNQK8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVDNQK8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5C97C2BC9E
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770057833;
	bh=RZNTgSSfdCi0OKiBiCGlokmB4tyUcGStl0Tj4d8q2WY=;
	h=To:Subject:From:Date:From;
	b=EVDNQK8jSf0h4apjoUCxD94Hxgjc9QZuVjYweCGZOh07XqKW5L3Qy0Ya7uu9+wPQO
	 mqyq7roTYQ8ngVFD1c4txF+uk/5MegMqbso2yPW9PA02HbqkZOOLI4w1O4Q3Cs1rPm
	 XJrmqCZMgvG/hRIqVbn1j/8OhHjiEEkIOw8ISi60Qw2ZkGwrkFPvoV/nN5XfhT2/5p
	 fDFnchFtrStI88AHN8O6wX2aQ7d1BEmIv5GVq42uNL6Ic0HEhzMWPtTNlP02uSP1Hp
	 /KKZbZK/6+EXaqNYHAM56fSdBQ0A7gFtLCVXoRQbb3bZZw/ImfTxVWzCZpzFuu6GBr
	 GtmXsXghh+9xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F3B1E7DF1F
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177005783364.1207.12476935414041395115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 441b31f507383df9788e6faa30cafd254b2dced61e6fa946bd40123c426976a5
Date: Mon, 02 Feb 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770057833
