Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2419D343D74
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771435494; cv=none; b=hby1xrjtqQ7M/l9VhmxgV17Y9t4/ElqzHXeGfXCt15C3QYkcoXU51/0nGWHOBe4kfbvGVF0tiU8fMVMQFsrjxrfOAjGmJEKk3R9b6/rCHfpw9JzvFciiCZzZAkqsrctsGHiQ1Y86/Xe/ZH2DKZnBb9BUJpKMssBjijmR4FMvYX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771435494; c=relaxed/simple;
	bh=nhBM8LjXeZlbTXAKnlpbh4TfbZzxwkuQ8ph4VdDBiK4=;
	h=To:Subject:From:Message-Id:Date; b=Lvfn+DPDbNzrGqy0gJYfynW+WajACKNOZx/yZFhqe1MWPdYcyhst4kFRQO2abdyFIPnnhWjzPch1KYxJj83x4N2wzeZ1xfgDjn3RSPNelL5EdWmwrWgkrSw3DEPan8QhouTx4cVwpGIPcUKA27CLurPuXvCDmYQqfnNRyHwC/yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UbPogqIC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UbPogqIC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F99C116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771435493;
	bh=nhBM8LjXeZlbTXAKnlpbh4TfbZzxwkuQ8ph4VdDBiK4=;
	h=To:Subject:From:Date:From;
	b=UbPogqICW2kAciYmQtiHGkQv0NQFeERGaSl5OwXyQkq4RsBS4r/XBw86O2QNuy6JP
	 oVMW60plIgnEj8gQsKHYoJEAkJ32GPBEi7Xj39r+DRNKB+T7/Dg0HIOV4TnhJrfbmp
	 KJDT5k00TOf0YLBIqPJ5IaMHcwiFdJi066sRj9fMwx1pzMH1hSveWdZ/aeybV5b3Sg
	 4buCM1AmyU9YnUj0A1vqo3D8uClSKtIF1DYuirZhK+eXHGJq3WZ1MikQtdIIOTCW2v
	 Mhk/B2xJpWIloWDpVtsPJGm/7F8nqCayRqmrfH1KVdEhoJaPhLOTrHzaLAYZ0Z//gR
	 tQhqADOUI+XgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949A3E9A047
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177143549359.18123.599095393676188295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32924cfce309aeac61023a582cdf1061a17fc01617575d90d7f6c0ea16bf5920
Date: Wed, 18 Feb 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771435493
