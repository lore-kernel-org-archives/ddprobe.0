Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5241734E766
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786054834; cv=none; b=itu6fS9GgSEpX5dy/jDgtww6k6eNBC9hjpy+m9z/191qFIwKgYh/+aQPGc2UwlaJ59gxCnqJNlVukLW10Z8DesMc76EFGxapIJSXBH4fngCxMVDzONKhnEVfSmJmqhIfL2cZCop3NcFjMCQ1/HEnq6NWrbjT6YQNqxQ8TMhDzaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786054834; c=relaxed/simple;
	bh=mMvAkCrzlrRRs7qntJK8XgR4xHc/2sSDP4S6xSovxRs=;
	h=To:Subject:From:Message-Id:Date; b=UYl4XA4myX0Rt/ji9bs7jUGaFtVUAQGdaoGP+ZDmPIxoNtiGbRKrGrRTT1Bpi2YH/h+OJlFcri+ubxrNy/5AVJuyjKTfAxBr14voHqvwodaDqBuwcXP+siAIFz//emO7kYZST/qFa8N55EkD8NNo8KApXG+b/MSOdTPbRz/+C1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLsA4hYJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLsA4hYJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C44C2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786054833;
	bh=mMvAkCrzlrRRs7qntJK8XgR4xHc/2sSDP4S6xSovxRs=;
	h=To:Subject:From:Date:From;
	b=pLsA4hYJDD1e/4e4jhN5DFVeJAlQO/9lwIHnxaV4N3uJJupFnLAOdKhEItgsYTuCy
	 VXGNHnTV9wHAA7UOO9MhMHS0RrE7y7cm33WMpBWgAdYQE4N/BbfeIZ6JOPN5RC4Iep
	 x3qMidfUdYkxMDHu/jO+rbYPu5MXMo2fhr78fzf+Vh9hJaQFAL9SWl+iHDW7R3lkMj
	 /mM+oYTldPHWBqXyPVmWMTNIV5sY+lE5H6RfiK4EXXe3KLlh7V/pmv0IgBsNOfliqD
	 XN6S97bZXOyqwAg6OMbN7T/SwvHrLnVsFtopI+TpAz8DgNg2l937hRsDR0ukJM+Vkd
	 Ivk0vkBg9HDgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C8FC5AC67
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178605483371.19472.16069713976543726593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76984b179483fc153c34ae7c86ff5134c347ee9bcdfe5933c61555e58ec4465d
Date: Thu, 06 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786054833
