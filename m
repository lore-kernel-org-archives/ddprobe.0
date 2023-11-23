Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2DBEC2C3
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 06:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgHTSwBM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F0B4C433C7
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 06:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700719696;
	bh=CE6H/Tw3PkeSDKzQ8jR1Q75XFoLCAVChDx7NfWUVYyQ=;
	h=To:Subject:From:Date:From;
	b=rgHTSwBMILeuuhDUFUIkDhAXMfbIvuSPK3wv+qm23IYOdh2Fh0GbijH+GW1wH/3Hn
	 IzI1sY914W5YaW1HMVoQinwiyx0WaKKJkpwIDxJBfnCa6Beb5Paer0auGr7PbRGBP+
	 MlvPTLiqd6exib03Bo4FlEWKZBlL7Tsj/P8QS0WbD8jPP6xXi+sRRUAOzT+haeqhza
	 JHL6jofrqgf7GN3Lo3EUujrwTmQe3JDTrC/34nbpDymmyPgcptFpvRwfetscuYEVB2
	 SucB1/++N52r6FwNV2ei3b75klRN8sQKbN5GVyl4CRmDjwtpTgiiBPeyqTdY2L9KMe
	 H+VImn6BfpSMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61B9FC5AD4C
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 06:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170071969637.16134.1023107351455018376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38827d7439b7cd6933361989110c66155366662b3e5be14b804691f584bff951
Date: Thu, 23 Nov 2023 06:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700719696
