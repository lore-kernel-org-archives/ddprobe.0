Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F12E628C84A
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774029294; cv=none; b=dD0WkwkgKhi07y5XytoWo7HDD3VsA5S5V1teen/v6wfNSS6zH/vgMoNEjwIFHEkkhPysP0thmxxHZHlkQ3qC3FLU9+Ew7NCDSABnsIHAflryVGjiuniRRj+vV3jx8g7MlTNolgCZyQkt7iqXC2LgXTsoMZu2SMQiHrFyvjQgKlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774029294; c=relaxed/simple;
	bh=1Hc1oTm/+SgdH4MTcID6dASrWcrGee7ucDa6qQJSyJc=;
	h=To:Subject:From:Message-Id:Date; b=e5vyAdW+0gqR23Bz/cU4JkXeP0CWuQlNHZ0ebgMBhqJDaTTnYsWYlgu6ABdrCjaWzgp8+7ILEJozWYtgQb9NGkFLZ7zA4whNF+v3UfPo8DY6LyDmFIfbuCfloSnvCHxS5PIzd8ppdTkd2VH821OWLDl9To2HbkHH1zsltgLxEus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZ5tYoad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZ5tYoad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC49C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774029293;
	bh=1Hc1oTm/+SgdH4MTcID6dASrWcrGee7ucDa6qQJSyJc=;
	h=To:Subject:From:Date:From;
	b=NZ5tYoadoK5+667XpxTMx6P+Mq5PgMT4HH9u+76P7aFh0Ht20JxdzluHr6BtUlHQS
	 1WO00qPSdxH253hkJwqwH+HCoQwg481d7QJN+9IJLnuNkSTnsBnvYl/m4C0pK/xkBl
	 CdcS5cIDtQJHVP6gMi4bLcGCDDJGNa45fB0XRAlNA4ql0cyyFIFKt37drg3cND+pbx
	 rqUKVMbRlPhzgZugmZsaMKKJi1sCr1SF/E0mCZrMRRL2TP/B7Vy65D17DkC40DE8fR
	 Tc8IJFWNVLsRe8a0EThcfjlRY9fKFgIixTt30Frm7ZkirSr9iKAJdsK4ySywrg+Ic6
	 lG+QhQTHHXtvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCC11099B28
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177402929358.5540.5741828996197076735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af46893da86955aa4b798d695ea73389dfe953f91b184efe8fcdd6173411a6b
Date: Fri, 20 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774029293
