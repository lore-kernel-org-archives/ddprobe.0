Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 027E056759
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXWK3mv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA96C433C7
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701365296;
	bh=nXQDOtN/FJErQIVYKlzXgJoaVqg4X7bQbcE5rUJjYAA=;
	h=To:Subject:From:Date:From;
	b=JXWK3mv2nWk3vQndHlwmDA2eh5KSqZu2egkC1Qe6y7typEivHCLTNiDpQyuYUXkG4
	 dnozew9mp/aMSR0LscwcD0jWJ8AMFJiCBlHd102+PZF/EMAZ4ZTFAwENWTJVG5Gpnw
	 McS0ta/LJDlGusRxM1x5/cAxsoNj5dvnbAeIDVRwSXcbR9hbToIUG5r8Hur+M4sm28
	 dR3UQKRJS2bbRWBESDMF6F3mz+KLp7g5cWgxN4YKuaab7CvpW3hN7YVXSjTiaQFZti
	 VxmEVuRDfE8+pCK3kVmmqG3spKz+sqEsXHBjKPusINMP9agf0TaxZdbfXbkkBg0T+Q
	 CztilTEnvcThg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6146FC4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170136529638.2120.12716418386387430788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cac50294048ec22be138aef9649d6d9ff0729825ed3313a3d1439d1ad486d4f
Date: Thu, 30 Nov 2023 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701365296
