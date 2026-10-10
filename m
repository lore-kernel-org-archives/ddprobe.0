Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0C0386C37
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791600034; cv=none; b=PrXLAJO6m3K+lqIln5oDEG5TFZeGroohZNSypKhtJdRUSjpqEisOMOnlHtqlDuYU10J/QMibv70JSA/vNcOyTVH81P4ueCxO/1KymbLSqtiHRAIuMB3PpLhmJaIGaGB5BNkoOZj79bCBvvgfgtrbWmwrONqWZOv/R2ulZea/Njg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791600034; c=relaxed/simple;
	bh=KhQuxZEtGRYs+6u/W2glRWGx58sH9e4uqRVSpZVtuI8=;
	h=To:Subject:From:Message-Id:Date; b=OOlPvokrNf73xGuwk27L0WF71IQAdj1MumTiErPb6WOuXn4yED7uuU2LOTduqEQoiSsGjDfSaYJpK3+Qi05TDYZKtXW2f6cbYV2ZPP8NRrKlVc7sZiG0iDHnxEwwkHCTsbMA3uBxOcWoO7KFG4nZnjonafSIEZ19XwR1K+2rE2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=br3qTE3x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="br3qTE3x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF8BC2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791600033;
	bh=KhQuxZEtGRYs+6u/W2glRWGx58sH9e4uqRVSpZVtuI8=;
	h=To:Subject:From:Date:From;
	b=br3qTE3xiPlQfAEsDVKmjbhUY1Tk2JEbIEMEqxLVklfNBURXvjUOc6b6Ak38Sk8C3
	 l58MU6/RutBnNB3NMyTUu11WbQxhud8Cv/+LUobunmJaSRQm4WJKGCQ+lj0x0QUvxc
	 vLwJzg1wxcJ+lolPmUPep87uwkze7JCy+kN56+DCLMXrRJShS6yb5qGCs+trHWvQRe
	 VA17Um2JwnrEWuKcn/x1Btw96/sXHVK6HtWqqeAROt0i/FqcumIjMo5nCum1Dz0+mE
	 9Rg7aT/pcbpw3JD+reYVYny83B+8/K/jDCgAFn9HRvLNts3EcilwWJX16PU8NUljiJ
	 9PK+zAc6uttJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCC2CA9EBB
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179160003369.5284.9583190586089201290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46962393b5c95aa5f56f060ee98ef436d745828277dd33014d219ba24b6845cf
Date: Sat, 10 Oct 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791600033
