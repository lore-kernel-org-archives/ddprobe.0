Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1365B3A6F1C
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 01:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786066836; cv=none; b=QMa6RZnu1+PhyF8LmnwPLNUMD3ZIa+nBb2VbrOjocx4VyVQSrCxS2KszcvYPIKTJOWynfuah0oUD4Au116l63T3ffIMsRFnqZj0Ary7pGJ+xMu+eCDCdJ6zJMj84VsQSeE0m/Py/xAQoloW1A+tNJd8VLQtBTc/2N+97Ep14PgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786066836; c=relaxed/simple;
	bh=5OtbX+y2UiMx5JRo/N+8h8o/VN6Cv3ajTP9+j+rcSxI=;
	h=To:Subject:From:Message-Id:Date; b=MF9Su2/wRDBHRNHgVSE7luM5Vsc5CGv0p8IrJMzh7BvuG2BH6u+6d6onD7GZIvV9fPtGfHhHnmNH3W9pqx3ogcNGvbuik3afK38c9LI0IhWqS4z3Cy3v+maUvQ0D1VFGHAKTSJvIXn17+RYW081E8sQUX7LxG15Bl3ZghEnAKa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VaERvCez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VaERvCez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9A9C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786066833;
	bh=5OtbX+y2UiMx5JRo/N+8h8o/VN6Cv3ajTP9+j+rcSxI=;
	h=To:Subject:From:Date:From;
	b=VaERvCezLlp5EvdqNvOqmECPUWQnH1jPqX4gdqqj7XRNQjgyedHrzEyoNNzktqkHj
	 ti25nvbDMUbrsX0o5uBioEaSEfulPzVzHNnAcyNoPvtuKJkr8Ma2zc3I5iF8C8QR5V
	 0CxpUXuoyJAvRfAqGqIt8ZrzaMXtScRJTueuXUNJ8jXOTajZoFXaEBnLWNY6q90Wiw
	 yWqK3aFvBUzYwlYW0jkGpSgysWfC3QeAR/649kW6ah72HcaVlbuMBixbPqv+DHE/+x
	 lb2+0YP4B+p1DArrqGPyvAa6+JEyKsFDFsy4ui6kO5e5MGLVmo8pT83/9DOO7jRrn+
	 IE7bDN4xKT0gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B34D9C5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178606683369.16498.12350650780098241671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe30d699e25216b4cb81d4df5c4460e53a789365c00355f054ef1592235ba64
Date: Fri, 07 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786066833
