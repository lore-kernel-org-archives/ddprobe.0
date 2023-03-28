Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D07AA44
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 06:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF4C3C433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 06:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679983386;
	bh=EdvWRJOEYeuUbGcPyqEuB97RYdrJHT30khC5OTxSoxM=;
	h=To:Subject:From:Date:From;
	b=Ya3R2S0OIAxrIkFdE9z+QcAWgSBCeTbVHo/pYJlNpFPwauE9nnmYJ7fGi5EGkGY+M
	 FhkP+AQXDyJ/PQEbLGs7cMMGtE16pk9dvY3ACWgV+3egPNTRWYUCrokytaD9n8xTVz
	 O+gvAT7s5jMOXKbCZodXhqdwX30os7L2sKeU/5MkypzKf32c+k3MRP0Xl/JIoGPnXS
	 79zlEkq10UEprT7Xj+v54mdDqcrMmqoo1n0Y2qArkH41RjaDT1KS35aoEH0CGi5FNF
	 A6U6/JWZVJPlzGukHhRWJFnY/JCnMGq7yVhSeTVVWmtAPrPDtKBHnC6qgpJzyLXXaE
	 RpW22CpPBhU3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBAD9C76196
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 06:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167998338581.5504.5802507118361669268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02fbfecc5eebaed42a2f4efcf69eace77e65ef06a08225cb140a3b04419e9951
Date: Tue, 28 Mar 2023 06:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679983385
