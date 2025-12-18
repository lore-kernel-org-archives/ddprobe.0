Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C88643451BF
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766066033; cv=none; b=pC/rSaCnR6072dMtgpdQHh7LUI3nLpXd4FDee7PBcKNeEZlaayX1nwb9hpsKLeeDO1E3sHish0t6dZKfGbJCzYGo4+XPAPZzK1pWYOWuoAt1jNt/LmZEwFMbh1R6MXRnZR7hXwTMp+NWISWYmtO6fgU+t6pp3gGGETZjZm/XhD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766066033; c=relaxed/simple;
	bh=Q6IiH75GBEZLdNwORn/oEVzMnTmFniC8LwLSTlhFJ90=;
	h=To:Subject:From:Message-Id:Date; b=bnXn4ad38hAbxiClP5SK4XwmuisRxjb4MNh4AizaNAXdumSZq6xNCJBfEKTYt8idzDvd5cMgWHXkppKCwKQnowA/ezNlQ2MTn+y0bpB+kMJO7rZ+Hp97dWElzFpUBFwAo3VdhY+ddrO35aWAif9cmWED4KZBqjaqC/7nMASWJFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ai9fTbWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ai9fTbWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3AAC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766066033;
	bh=Q6IiH75GBEZLdNwORn/oEVzMnTmFniC8LwLSTlhFJ90=;
	h=To:Subject:From:Date:From;
	b=Ai9fTbWLw8ql7ILuzIOZEKlYf/NfzRgQrrSplzVDPcyBF+cjGjsa6ntMY9WFv1GC5
	 GNTCeXbLlDGdo2aKriFFOcCS+6LpB2PjkgxzK9aSygmd73+bHa2Bxz99RY+s1aKn8y
	 fVD5/OFfr+uWwNcwjj84ZJTDnm1Gygs4MC6qXdjPTm7vVto1vpryGekQZN7UPRc+7A
	 fveYpBimwIs5caCs9y5eDwdS3IhPlrEh0EBYfXF3ifNfMcCkysryDs3bjkJw1PpYtg
	 3iREft+s3J8pXcxcTiZ+kfhivWQ2Mv2o5GJAhGleVFKIDb0dacrgmrUcr1d/POTVh9
	 zCcgINVBMxIgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A3D6D226
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176606603358.20948.12297536142654079895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fb472947cde10919ec5430e11ba308317358baa0d78a67bb76d221e305782b1
Date: Thu, 18 Dec 2025 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766066033
