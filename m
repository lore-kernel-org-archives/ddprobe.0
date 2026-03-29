Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57BB0381AF7
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 16:34:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774802094; cv=none; b=C8/jPtJB9qhntfVfAFsI3yt9v/iZnrCAeYCETi7JFCBj7kkc376a+rJf3VkxIM22ztLbaSAREDqn/yiw8yHz5Y7JZrCFuhyGqBzlHdYU2AYYqMhBEtVCAeVzgWA2YW5GdhN0uRqmaZ5uHA88YBq3oazVZyp9RQKgVcK8/6oUmtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774802094; c=relaxed/simple;
	bh=0KD4rQkC4rcQJD+srkBg0BGZyCQJIOjs+uXAqKoay+c=;
	h=To:Subject:From:Message-Id:Date; b=dpS63GxpTBmpW3jBXixFGHnfK2YnfF7zJAx1dIwGN/BluRjBWv7mKSxRnrtrD2Y1ar1NEbsTeavtDUoBFxj9Itbg9O6xPNMxvNcxuRnnIHGTlGVNQ1PUC5L6HlEAeXCjYr13WdUVb+rjINH6ZlSU0nFegJ5KRgp3+W6g24HBVlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXADeVih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXADeVih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEC86C2BC9E
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774802093;
	bh=0KD4rQkC4rcQJD+srkBg0BGZyCQJIOjs+uXAqKoay+c=;
	h=To:Subject:From:Date:From;
	b=EXADeVihrvmgrQc198FlIWsFbwQKfSapBzZORTisQtLndBYGAJQKOlBkct3S/Cn+f
	 B5i9XYMxmmB0dk1G1yXpi1Je7pCOXdSqgIJDAPiQj+ukXNEo3MMc9L/hXTMy8sih+4
	 KdxJUhFaETtXiQNnd74aU0E/k2Oqh1/kZjTUCeD/h1qUlExm2hfvtSbAye/i6bV4gM
	 omsvi/cXo8yd8aWfkmBiaD7bMtpJ+2g1/1IEP+H/X4v9Reve3/LyEO4CO2h52hRxYc
	 SZmLNgE5smrPld1UlqdoM58uMeeHmDLaQSH83V7+IcafLolW4oTNl3bM1ZG90Nw6KH
	 P3q7Oc8ptikfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A47E3F3D605
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177480209366.15186.1451455301219799020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e3c2252a410fcf978c12cd8b1ab918e48e4f5037ebac15df43e4cb917c41450
Date: Sun, 29 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774802093
