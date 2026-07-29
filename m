Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B722473C90
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785322834; cv=none; b=H4L60FBa++ZLFg1epAI28/x8kNGSstWfJyrl7FkWQFD9ZAo+5/quY908rJWfGtVpC64Sv+MO8ZWndLrj2cefZMqt9k5xcCnB3kn/WPjpZtAkdFUmC6PQ3G5nM+AF6OhEuZ5oR6AKKpKz8FhBPF2W+TlC8gBO5F6tOgzqum7R2ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785322834; c=relaxed/simple;
	bh=6zhE5VSVsjzwmDNKn8w6wjkY67X/1DnBTdX5HT3N+Ks=;
	h=To:Subject:From:Message-Id:Date; b=u9ohWGD9t76pd621ozLlC85SX+fWaHX6u4iCiK20WNimiwZ9E4eG+RRW6CIie6CfnQOpOGsuX+igCHnDImIyQZVZqRmIBtsWX6R7UwtixcXk9YP6i8XZfQNggqc+xAyc6y/L5d9QpWp/z+ebPbYccG99JYd+tCGN2K+r+BhyewE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4JEJWuZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4JEJWuZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA322C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785322833;
	bh=6zhE5VSVsjzwmDNKn8w6wjkY67X/1DnBTdX5HT3N+Ks=;
	h=To:Subject:From:Date:From;
	b=Q4JEJWuZ7kSXG59uGD+83TDVlVogn7HGeUMiUVPnUGLKet8yV4NDKeeNOnSGR2ZSL
	 AZPkQ+/oaR8uijQGi4F3V6AvUgOzinGbyeKJzeorfmp0vRFHYGoEjZrEazv8UjFnhO
	 Qiky9xfJO52dU+DXh+BbgibFUkOf9YpgXyWPP7ne3j3/6V6M5hp9GeMsF5NzT56zjE
	 d1ZIFoV5CgO1DjR43UxxLSZVZyaIRIzSGSpiEAUlqinuhHrPsCWM3oyYP5+0geRLE5
	 xiQR8oEKzn5FhWXNNF9TSM6hwvmLujHmeo5YQP7fYgX55UZWVCx8f8YHHVnw4VpSan
	 0ZvbeNl/yYdFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88C7C54F51
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178532283368.6155.14320785587406619358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a7c928c8bfa0b7103a29e58c506cff185a06002ae6d6207cfa523ee4e967093
Date: Wed, 29 Jul 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785322833
