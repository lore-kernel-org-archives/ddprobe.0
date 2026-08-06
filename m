Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CF61F2B88
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785991834; cv=none; b=WW/qjR4ULSLiqvPMpd39TufSU+uRZnhGhCjSJzn1h/tgU0nYAXjVDSJHtVzEoDDFfKrbvMQ27+hAAB5Nu+Jju75r3cRFGTuhYQoIZjT5HtEo8TPyJ8PzhTyj3JqhlOvczQ3P260qWRH7ZjiacFYNl75MYIG03N6qej3zPE9rVAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785991834; c=relaxed/simple;
	bh=siScWnGJ0vcg0J4wXtcXJLrnLD/wqYgTG9cAj8Z34DU=;
	h=To:Subject:From:Message-Id:Date; b=DsFD7wVeYJflVMGjdA73SUJ0IRfS20amfmoluikW66Ehql02l4CLziCJUKXizgydSclP6QBI9hTdUQn2yd/77FpxIVKP+Dy2aXG+o8vqrXMHV+OPd7fJ9h3mW604D5CcTxFE+FliTXcQweKpN2uAGiBoBcGurbC2xINvZROfKL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+Q/Vdj0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+Q/Vdj0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6AAEC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785991833;
	bh=siScWnGJ0vcg0J4wXtcXJLrnLD/wqYgTG9cAj8Z34DU=;
	h=To:Subject:From:Date:From;
	b=k+Q/Vdj0ht8AhOaWGxDlwgmZjvOZyVwO4cZvepbymQAV7p3BFs/oBRRh4YOH94Qvf
	 GSLZvxiGTK5qNgSF80m6A59k+vCaHzDVP3Bc/2BuxT/VzaVycyHOupsNwlJDD0OEY3
	 ts5X57Zw0SPJ47kpqySeYmUMJ1dBx7g3ApJHxuG9CY9TWzjB6IZq25QY3aqgT1tMOx
	 IHq43IgxZxB+H47YVZMlG46esr5emTpYvQn1HDIv9l81X4F0X7h5ssPdRoi2FIT72v
	 BfQTywSm1kZ/2Hzp5xt9zHEUpW7JY8V+mA0+xdCNc0160rLfUhvpLcKV8j8AGWjJ0V
	 99l45ZzFs0H/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24CFC55838
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178599183370.31482.16711663412819230405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0abec5150969567845c9c8034ecdc9b728dd007b45cc47bad88c770a792e8fc
Date: Thu, 06 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785991833
