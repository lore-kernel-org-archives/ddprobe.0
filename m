Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED80A33CE92
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 13:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775654734; cv=none; b=HCUTvdvrAIeK5M8M6vaA3ASlkCh+dxJraTiqkXg0F2uqB1Cz7W/KIiinLis6NoE3u7urGVtFBZj8aVP6SWW5aDuA8XRl7O0hy7o70Uz/3MhIrJj41X4+Q48RANGc6mglIE8kj6ZpqaQ7TBekOZ7FCPH0T0u1kard3FyWjA+bvN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775654734; c=relaxed/simple;
	bh=gB92xWfjKAEbe+B10+JPopSAL1Yp64e8umYThYEzYdo=;
	h=To:Subject:From:Message-Id:Date; b=pYJa/dRd8XFycIZFn9cBHLi9kwKha5bgR2e+yD59B9y/zKIw1nctDZKkM8B91FGVIrny27Jvh/nyOZXnBSORPMnnNDRi2XPyFupdpEDBVizWuV25Ambd3xTFGbnVCzEc7IQNhfTaVQwPRz4ww2uKWntwf1y4Gfyyc6+PV7LHdZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G++2PqwL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G++2PqwL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC05C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 13:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775654733;
	bh=gB92xWfjKAEbe+B10+JPopSAL1Yp64e8umYThYEzYdo=;
	h=To:Subject:From:Date:From;
	b=G++2PqwLZ/iR9hPBa2X462jKwwQJvNKlrdw5nOt8t0TUEWzqgEqWIZ+YZ2i4MDf5h
	 qtZQ2/TFMeYAqjaRcVoq+ehyYqoy7N7whUC3oxPJD9ezJlrKNZ7+hRbClOTAbHtcUR
	 LcXhJrNSVvgRjvCgxVm2BJBNSpZZ9JflJMknAHYBPCgLav7aNpKhPg5WlIQ1iVn8JX
	 BqbG2Zwq81VWqCNtNgauSWntohNNABY+QPG2bt5HBBTxUYb9mx+2POIQtFwn+o4vAg
	 4KbCq5sU9jI0T4WQURu0w1WYZ9ScnxQOCDAcFSEr2K6CESGlI/YQ4OCiHKOn5iL+UH
	 4hD0dt2zeqOjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC89D1073CBA
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 13:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177565473369.25194.5571051667820142868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 840b68ddf56db1508e94157b00768aaff2923e4c094ba05900966617623b8406
Date: Wed, 08 Apr 2026 13:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775654733
