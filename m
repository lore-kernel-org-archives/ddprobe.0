Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A65F326949
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768461834; cv=none; b=P4t1cFOOYqI6MUV9cjIrSDU9TVB5QIcfbatHm/pZDwPzJI9R0e7O6LTFZy/YFa++fXRWyooIbqno6/0kyQ23WsjTPqoRWhHkN/It+C+REOQbgdNr/dskpKqDPjfbR6siBJHV2y0E4nSuVvF2N/9l0h8VXNU6rtGwRr+2rN+0tVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768461834; c=relaxed/simple;
	bh=UTMOHLk1uVZVsEjVYRnBC8SUG6/uHJY7JOS2Eb0u4X0=;
	h=To:Subject:From:Message-Id:Date; b=RKH3FEX6EXQ6WVimNMGRILWKfE145ateTgh5rEYckfthPFuRdQP+EdE0NnGi/9f0UxyTPDPdTHsTvS1CFnVGKrQ7LHmPpfQvyGLTBZMIWsR1qqrGbP+YBdXLbIhnqF+4phzdYv7MraXwMg9PZ5B4hCaUoEhJ3+wySpqE3yaChjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCmfW1qr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCmfW1qr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAA3C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768461833;
	bh=UTMOHLk1uVZVsEjVYRnBC8SUG6/uHJY7JOS2Eb0u4X0=;
	h=To:Subject:From:Date:From;
	b=fCmfW1qrI4ru7tX6DgoGTc4ZVbLVYWxhxHfcvCkF41biLsHusuxPqyFOyr1TsDu+d
	 Srs+Gnld5WObSMmVl76UmF9p/ntZVMtLtxN+bi110YoIuFENT6fEizw1jCSoNx0ako
	 Al87yecrMHMDxJr6rTh7qjFGSiCxsgg7ESZ5TUJIlGYHjEU+sfaI12f/kxCKfDrY5A
	 YfmNslBa+Yf7id2jEOJ0sFhLhaUN84S/d82NXf46UwErLx436oE1od/k/BddpIOlFX
	 vwIwTYyXnguKDxT8/k4CoKvCcBXfKuAe289mYmkspuHXEYU6ZBrtQHL/zPSfrQKy2h
	 BcVfUXn71/6pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E755D3CCB2
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176846183357.19038.2231581744455901422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 436da83b8cb7af03baa7380e35c70648b2fbb91b90eb9e480bd0780b29963801
Date: Thu, 15 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768461833
