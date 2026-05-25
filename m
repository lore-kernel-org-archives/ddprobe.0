Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C7E17993
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 00:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779668554; cv=none; b=AXyQe/BP3yckm2H2hK/IhGPjuVlK5W/GmdmIBl/VZZQPClQwH5P3w/ywaAlLed2uvbBsv/BnxtJ7zsr6ggkMRK9nvalJbO0Zpv2Zk94y9VbhcMNYVVtZmvfiHZAtGQlXHpQuTcWARR+LKCx1cJ4muQgELuU1wm9gvAVlfdEOAew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779668554; c=relaxed/simple;
	bh=DT9N7ePWqT4AQXwJuwv7KhOUxkGXRMBX4sboOkFfwQ4=;
	h=To:Subject:From:Message-Id:Date; b=nJamgdt6XJfVxxL0ZPMlj0Mv2MoCOnXgz8GHpk3AU7ApQsu5Gmf9R3OLBqrc5oh8kCjqs2OKDXV2MwhagF6fQxWgOuswjpn5IcjwuLOIfM8CG3ak6zPXE5uaNztJTXlr2HIEdJgRnhrwNsw3aJN3PLgAoeTm307v991hizPbNhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KapufHc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KapufHc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06B6AC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 00:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779668554;
	bh=DT9N7ePWqT4AQXwJuwv7KhOUxkGXRMBX4sboOkFfwQ4=;
	h=To:Subject:From:Date:From;
	b=KapufHc/7wbE3W8a5c8nTsI2OJBp1OdoQS3+3qmshjVbyH7bJLO7fTGGtBMSEpZVo
	 jTwQnUTLSTnL7UbDDOCTNkTNyskFSIeDLGRNiwnVCEGOEcyRQF+SzJKmoPbGyOrWCd
	 AVVnjJeksC69gXeD1VmyPwesloyJChrR9ks0q9NFUkhSvBNDoeB3lDxWY3svsjQRi6
	 r/D2OvG5JiroiHlKUzm9cWCOyh+MGhaigxgd/O+v2l35fn/aovZraif1W7mN74rjh4
	 8V2lzYodOocp19jT3cYIfEZx1LvdcRomEtMw2kKBS9+4c29heLad1HVds+DWzJRUti
	 DeMhakamMWh4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBB61CD5BAB
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 00:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177966855382.27471.1038757696194332229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e5d19e26e66aa3b14b22113bbd98ae5b2b6b1bbd16e06df92d81562daf4dd8
Date: Mon, 25 May 2026 00:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779668553
