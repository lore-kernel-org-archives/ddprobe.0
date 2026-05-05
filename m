Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25375331213
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778021854; cv=none; b=KPq0IO6wn8kdLR1T8quqxP+e5B2ew6oMkTt+u1dhGSxA6ppnT0Z76xoSPY8S40VndELcpCQxrbWyHtdnP6BVUe8C2RqEqe9mJ0f1olozmjO+ILOrHvseU+VxdW5PMth9sMO1EFPtiFDoR67G+gsMOadofjIow8UwIqmMkCMwh3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778021854; c=relaxed/simple;
	bh=QorStHu8z+Xx7tMW6+4MGyA59TnLx8Ay8rdqh1Jn4Ko=;
	h=To:Subject:From:Message-Id:Date; b=tAKk0y27vf4zRyVvy7jbsVAYCpNmHBZq3LlHriekuvs7mFzeXChDC5Sh1/Ieh18tFfcHOnaPw7qbWKHVQ7+/pdnzV33XA0fM8499TjMTCcWUAhNmGkxy4dgO456ZfBT+J3Hz0sVxzhOS457qNUvquYPRmxbSzpzLqf+UziMlHk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuV3CHvN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuV3CHvN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A87C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778021853;
	bh=QorStHu8z+Xx7tMW6+4MGyA59TnLx8Ay8rdqh1Jn4Ko=;
	h=To:Subject:From:Date:From;
	b=CuV3CHvNJjMizUvBsOHlhmtaJ9CfIDlJD2GY1/eG4+p4i8yxc+j3PXRT9mafEv1Mh
	 7lk2O4febETxmrq+f3vqWgNXFSRW09tNUEVNgJ24+t8+b/+LGZk/jMjrbN75cdW+at
	 34ZX1eVhGGwIVuKnlKnLlblNs7eKDoJ+uFtKw0CaI5lQvQatEQzidqweTfpqOyIrVq
	 SRqAeH8FWba2vbn7yxeWPujPJSSGiOky8qslB8gj/gLkU3riEv4XTgwI8ighH0VokR
	 NmOYiMeKcsEl8FMrVJonnc7L8wMbdtEvoGhCJrPPCF9RNvNdpRy6fh0aohKYQc3jow
	 d6ePye4+rCpeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA46BFF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177802185368.14548.13570516166578947584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c45fd4be3faba18618b53c38837cc4030115c208db35aef02d114c5b218066e
Date: Tue, 05 May 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778021853
