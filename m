Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2A63D812A
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773931494; cv=none; b=V6XwzoMw87Wxo02Cs+wj/YJKbsBKFdHSJ+VeHt2y4ZhOg6OTlSaqBJd6YX0TnK5yAXfAbJsaa9VjE8Aq/d0Mv3qvadiqPuNyfIzvLghXTC0h7RNuIK/kndxhoRav4q5/Rg5JiRV2XryN9qJjxFNLwCe/nrp3uaTzuMb2lKeHRis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773931494; c=relaxed/simple;
	bh=nzr2XUyDkDKbpeIP87y0sYjmYGvKK8CcBCVTGnAdwtg=;
	h=To:Subject:From:Message-Id:Date; b=KLGvQVuTRMfne+rsh+ny1vOv22J6+goBe8xGlJR9uY4GjK5DyOlrTP0lac3Ivn0RRAgpmcJsbw8OuU3JbcvcTcFJsxCeOldMo1PHezX2XheubPHC++CBQv70QvpvCr4xxKrxd8apScGOu1bv2KoyRj1hKVd2XvBnBqW3SUptmFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSAunoB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSAunoB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EE8C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773931493;
	bh=nzr2XUyDkDKbpeIP87y0sYjmYGvKK8CcBCVTGnAdwtg=;
	h=To:Subject:From:Date:From;
	b=tSAunoB5WtvuSwoKbLqInM3U6nbYULTWh4ptSiIZvTqUSH325DDLivWLPrMdZdMas
	 iX1H/ox5F2erI2zZDc5dAkE21u4idO/D+EDqyXtGyNBq0V0U7i0BqKZvVdD1VbAtLl
	 DYwGWCAWmMEo7Fpiyl5oXOUEVkivsFB6WGpCkJXZJjQG93L6rMtlFlJ3GS/tjgkHfZ
	 nxqFI4e1RRANk+t4dM7MXSwS2rEPHLHnKEAXpPLd97qY7PUI8SvQw2npWPUUvr7SjN
	 5w4lMwgH1eO+lZVR9BETRBQHadNgFMvKs4HKZVr2noxNShvUgrlfoyFB6tokp8VKvw
	 rD3N4FjGPqXpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AE81090236
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177393149357.16843.1036810978802754981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ce55a209e8c81ee744cb97cb7de3200e930514ddc5018354bed5651592efc44
Date: Thu, 19 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773931493
