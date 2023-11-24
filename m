Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B7E364AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvhY/pWJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C319C433C8
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700846296;
	bh=Tfw+e40uKmcqpfbvNG7S7FpWM8l63ezrGEyaY1KyCYc=;
	h=To:Subject:From:Date:From;
	b=JvhY/pWJpt+meEcC5hVo2DpzxEPMmEmTFKrL/XzPxjMeKox4gkdu7Erp7xTmzk+j2
	 +EaYW1Pqh1X5+HR2X5FlmkMviLeqG2GJsTgjleYfHF5LWVaDtJvhFjMj0i24Z/7fbl
	 lRD4oU5p+2DH3J346k6kMJlWZunsSxI+sEKZ+9uMPW+BO8lwYRe34/nAwnIytpBReu
	 8fw0+8JpVgPgPh2swX4eAhPgaDCMWDZbpEgpDWHBVhKTKM7bZPasFxOyBvEkRfFb7g
	 ecPKxbICGiW5+I6qhsP3GvONAEsMkqmw2INkmhNOucY3Dy2gfI6qpKdSFw1XBVYvKb
	 CwYw6FvYWRB2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F198C61DF4
	for <ddprobe@lists.linux.dev>; Fri, 24 Nov 2023 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170084629638.530.1122570147227369787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e856c15cb4d01839b56cd7fc416ccf12b81835567538ff7cf6c52ce3a5d82527
Date: Fri, 24 Nov 2023 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700846296
