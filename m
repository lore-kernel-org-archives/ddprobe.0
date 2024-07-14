Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F380DF58
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 07:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720942823; cv=none; b=tAETB+93EeKoishK9ztalgk9WRGv7aLMtXgYeE9SZoO24o902t7aEITk6YWeFagtPF0rAMyFLyvPXUfd8sNVDyq5sFm3M7rEGzYjpjRTjbVOt0Y0g7NKneGnbiI+AtimtLwIWYoNS6sxtE3UF8CCGvG58htY1jPSWdGSbIGbexI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720942823; c=relaxed/simple;
	bh=hxqSIlxm4buIEcTKMbYi22raePOSNnHx3CXtlLrjsOc=;
	h=To:Subject:From:Message-Id:Date; b=G+Br03bwO5veOyGAVVaS3T3zBzN0cZJWZhxiFVRsmgvwwfn5cIXR2iZHr+DPIyCzF/hY7I7uT++DCoREQ3JvgBOW5IE2VdxGuAr4VURX8rayF4GMYtjpY/a5McdXWtYJr4rrVkKRFngyVw5T9AlRQW6DvKbm7Ota7GINE35j8t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRpU3MjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRpU3MjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1C45C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 07:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720942822;
	bh=hxqSIlxm4buIEcTKMbYi22raePOSNnHx3CXtlLrjsOc=;
	h=To:Subject:From:Date:From;
	b=GRpU3MjVsY11+T8sneG0O8FqZ5mk0K0SCFgXL1bYFepM+n1atEh0Q60c/QoMfj99/
	 Y1Fz3g4GBuTGvlGVuGsWUlLm8WzYu6s/Gzy7Sy6h2DUjS34kYnmXBk03mq8DlNEu0Z
	 Urhm9sEK57KDHOoXFDh14yynAPfjXolDX91zdOTqFTKBB8SQQrguD5cY16PobtPhlc
	 DhasZXR1UNC1o4QPc6oWt73WI9je/5m3Cgv49pVOr1bKnANZ4d8DbRm1ZO4DztiiT1
	 S0pyw3bX2ojnFTXz5Pfwn2aJhwYM+lagYkPzaM7hkX8ud9TLHlW0sRWk1xn7A6ahMM
	 wsHaOZhaU3RAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD3ECC3DA49
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 07:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172094282279.30144.4324179391738434392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b724688a86fd232af8279f680b0621abd0b945513ecae96ea365b7dfa369c9f8
Date: Sun, 14 Jul 2024 07:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720942822
