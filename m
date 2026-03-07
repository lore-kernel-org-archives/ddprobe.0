Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E846225417
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772894694; cv=none; b=RdmoaqYm1yhpCRBs09QzfC53XDaJVDYbdSz+WfKne1pH/fx1aMxqIJJmxUOHHFbH0vdzbAXAsHQ4u2/ucWEcWN8KylS4WwtAUTxdOAv7WHkj3cFI4k0NMkHQk4lbPUy91Q0Nazfg2EkYNNsDoA8o5dFbZP20fvfhkWaAnPm99Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772894694; c=relaxed/simple;
	bh=2TXvzU+mRBihPTtWdGGMcMhlQu9+6VaYWRD9KzADxT4=;
	h=To:Subject:From:Message-Id:Date; b=YfMUDHRyIw8ToKl2H1JtBGbAlZso8eEnee9eB4MVxkMEAjf36OAt5pkT/uOnTi1Ss0CL6giNKa9TSfRB+Xw9bBwZ6Q+zTtunLXPJazrmK9ulgEdyi4Rh6SsHk4ovNPkWX2cKpz4vwbiqUWPK3s4DgvKcwEcdeyM/xSXytTcaNLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAA3nmxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAA3nmxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4BACC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772894693;
	bh=2TXvzU+mRBihPTtWdGGMcMhlQu9+6VaYWRD9KzADxT4=;
	h=To:Subject:From:Date:From;
	b=NAA3nmxhVaJJlYnXvliJisGUTJ32JuNb32NvZFdvtyf7ZIoeOT4a9MKjmsjZEdBOI
	 hUuRqW4e6xVoYp9uWFjkSDov8uGr/imHP7Wj3qi8Nyv5QowM3Wa5gUHqnzzJgk7mGI
	 L8AQkQQ6g/6cPuazBqHQiGv2Vqp3WXQMNvBP5DSH0bsZR3gZ8Shcavobudf6+bz/Xm
	 TPwKWbu1coXxPdGwTbEc2lHPsFS/kcozT744Q0mBz2ig7Qw+0KX6cysAFrOcnBdQlk
	 9O10v864gQV1jbodoNmxv+N04ACjhZc9K2YkPqmtu5cN8xNItxhyW1Znk7rr2k7pIA
	 I9JBl86BhbiQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2213FC9EFE
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177289469360.31417.896068253488823419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4d95db5d0c461faa1c553b04ff3ee5dcd174e6695afac85a0eec328a9d0cead
Date: Sat, 07 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772894693
