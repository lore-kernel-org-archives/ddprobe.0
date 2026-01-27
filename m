Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B88228469A
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769556834; cv=none; b=c3eQRMLInUOZ3S6vwVn3f38AG80AHuM++RZmYhwMWmnnjZgZLFZsQcaWqYtUbQYUiU5fJ3ZAejCfu4BZyNjjtoHRwhA/Wb2cfSG3OaoiMRaNFsGTlsxHdypbDrd4bL7bJ2z9m6f63VDciMisNy4Ytys4RWF5mRs4cCgfIgiRU0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769556834; c=relaxed/simple;
	bh=9ZENoztv//NLPcd9I8/+oo6F5sJBhnzpYiWyQMVXI3A=;
	h=To:Subject:From:Message-Id:Date; b=anPMBntS330V2T7t1TC9+HB5tziK9J3idcI+2HkxeGAAQ32nyyKrBdtHD7xvyIdJax2s+oBZL/4TEj7gytJhxX9iQBrBdfFW6cVw6cjncI1wrvpW+p7bQmzDVRu8+3VAr4bj6KZeyHcKkLNAu4gDnQsED+iA4o3DrNeXrYdPqzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k3XfkObg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k3XfkObg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6052C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769556833;
	bh=9ZENoztv//NLPcd9I8/+oo6F5sJBhnzpYiWyQMVXI3A=;
	h=To:Subject:From:Date:From;
	b=k3XfkObgas4WJwaTn2/IZXydzTl9Ys28yQEEYtYlt9r04j8ojGqzmQzM14AuEhkcF
	 O5ABwxvywUTyae0ig9rdHIElNTiD7KOf2dT9diGkt/LQiPhdK/CStmqmXOTiGqSKwr
	 dwhSzeFZDjYjWkJRhpB0WhPkSV4BuOurQ4RLiYAEeEcaAraLgpm/3Krad+pZz2iOWz
	 R1AWSVLo/UH+cXAhy/+1SFmv+N7XK3Mjb1jjXgm2/H0OTL+2h4HN+GwY6uSnw3hk2m
	 v9wZGxILKCcUsTHg7uWvO6U+2QSH++s/fD/jRDPnr/tWO1L4AJc+Sq6EjG73BDxWm/
	 Ftnr8NcNjoz4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909E3D2FEF4
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176955683358.24140.14100420213714284232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d554ffeb5754e8404eea8973dcb88ffd223613174431e8b94d0fc9659a87281
Date: Tue, 27 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769556833
