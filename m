Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C711433C8
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746241194; cv=none; b=JaX9zRKfuYCZ1WnPnZIQJd5KMsfGw8GrCXL1shcXlQ5AJzqb5vm/+3c83oTYhJ44jTv8MLYVJ6DKDv7bofH4aDvCbNn4+YPnD5NqE6xl2ExQM/Rno7IE4N+n6dvBkR08HPww3h55u1R93ssmcexPb6tv+BJybmA7AqMWG4j2eDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746241194; c=relaxed/simple;
	bh=//icIVcCWm86c9x36Hwu8NNg4NocTMtKVWIz36Lm+VE=;
	h=To:Subject:From:Message-Id:Date; b=DJB2ABuat9PaVo+93luR9NWQLylkd+bH1J3DkGrGXrceVWyD4CKNAsNs3ChBPHj+o1ODRzR5iZcVUCtSP6JEweayQOXH+h7X2u8UkxvCobhxN52TbyJENL2FmSOq86yhzD7Q5jg/MH9shbPMCC5eyOah2fzfKdWn1qJldEgcjaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M062YJ6h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M062YJ6h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62DEC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746241193;
	bh=//icIVcCWm86c9x36Hwu8NNg4NocTMtKVWIz36Lm+VE=;
	h=To:Subject:From:Date:From;
	b=M062YJ6hlaLFq8ns6B8PWnz3TcZ48jrGhCeFLv5coxUlAD4hAlZHchuOeqOI2gtEk
	 n3i2gps+M2Z9huVbwVPVkmlvAQ6D7f0cZ+g34WvQ34vS/ez63tVkU7Jy0vkJdOkk7Y
	 GXlHRCY8gNwYZv21pRbl9lruBx3GdI3OYtAkdcx+Ylh52RdUCqFxFuHt8oG9+4m7As
	 8jz+sFi5B5xnQwgGekN3AiExpiihckg+n9l3N11CqPx6jE+gBKuWwL+inLwbctReJi
	 Rd25ZNBjys53DtMSf+yWk+m4sZk4f0vcyGUg61TXxug6ZXzhOiJpl+bUptpi66TbiC
	 3j+8cKlhkJ17g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94784C3ABAA
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174624119357.6572.8375598505195933620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d4992f116a3c8bed73bc5f1728844b321ddccf3af6ff24af54c523769e5300b
Date: Sat, 03 May 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746241193
