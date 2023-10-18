Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B9F1C2B
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 03:07:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IR1KgVZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7AD9C433C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 03:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697598432;
	bh=xNFydWZeEC0YtOgV/0XYBVS2Rm5ThhpEZGRoFiU02sQ=;
	h=To:Subject:From:Date:From;
	b=IR1KgVZ9D++SoOrq8DPx4fSd+7iB993yqipT1YyYLtvje0dlO0vHs9vCa0qYMkYll
	 0V1JkajkxApmewPQ9VknmiWoaIkwjtU5l5BfVYMw3SZJawNV+qqsh/CkLUU7GK6vu9
	 OYst66nkHojSBvKwyjJ7wqzcWVcN4/WcthUEzZRr1N5FMfFkiGTSzYH1W03Rq1Gej3
	 M0umaM6d7oiGb4e13j3bNmQyh15jXMK3TjoeiTbO1m+q8naQI8ogb3ZfxhLubG2PbH
	 OYJWvsyOb2z9gKsmjm04m32aSKDzwtMfzxbN2MbT6+F3ICpQaPS68s1j4W8z/xV3zA
	 /J59Ord0LzMTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6747CDB474
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 03:07:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169759843280.12818.8421868012886944908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1948612b7680c73bafa7141eaba3c64f4dac7d926e79981d10bf161b693bedc0
Date: Wed, 18 Oct 2023 03:07:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697598432
