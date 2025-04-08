Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB24218823
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744075795; cv=none; b=OLk6D2Yvc5r+ih1BI6e67sxdShFhy3zX01TfB14m+kkRAuQ5neN/w5eCpsbn5Ip95cj1Js9Ate5QQLJXNjfrlqEV14Hi1RBumI86DU1AgaIJrqbNDnAvHdSKdWInq98HqG1SJ8XVQNxaD5W5F+y3U0YmzTqo9lxe+DWRqeL+6uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744075795; c=relaxed/simple;
	bh=Gv7X50XoDweSgd01IwsKM/r6qwJEFVmhS55WZoUYvgE=;
	h=To:Subject:From:Message-Id:Date; b=KaLWXt4oe2VB0ADk+lomskvr8f43NoKh4W7QC+JyY6ShfycdQe7gx9KGoQO9I9nYwzFhZ6F+Egt9XfOF2eSwFpHN7Wtw+3vHSjmYGQHNHOzK+TKZjnQGDB3OXtI0whiWkMd7F1GariMR8HT6vPq0HyFbhQGPLzIDvqz+cMpLISM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pY9/0Bsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pY9/0Bsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5DF0C4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744075793;
	bh=Gv7X50XoDweSgd01IwsKM/r6qwJEFVmhS55WZoUYvgE=;
	h=To:Subject:From:Date:From;
	b=pY9/0BsisSY1n50WTAtOqwOOtDh0Jjr0kVRdF2ka2qn8C+jZoNfGGGDpu+XB5PH+0
	 KBfKdH+R2zHtTMcQ0R8gr3cgsQQpnvK1WwLisDZY2PR/gLQxUOF3Ah+MVimcWdID3t
	 d+QMpw5yauy+dMX43de7JzPol+QQf265/B/OTzGF1oMnBn9rxIUk95R7CWXZz6Q1Xr
	 OeogM6MIFkTj0HaEXInUrW6m4xNDKxFxiGrB8IddJYv1tmhRmJ3tbPKvG1iDDT8ETy
	 HwCA5ctwh/DNbtS/fDyOHezjQqi/bXN6X/lOwK1HBaV7t7OYPsp1Cks+d/CCoukCVI
	 2JjpPtg59jzhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A253DC36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174407579362.27273.12403337377615329357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 863b0687f2781da67ee6dbc9871b604332d132968c2ec282248c68c46d79adea
Date: Tue, 08 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744075793
