Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B567828E8
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 09:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CD95C433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667812254;
	bh=vwNNAkUG1Kr7JX3ma96tHxQbiTehdUh1ccfxI/pL/40=;
	h=To:Subject:From:Date:From;
	b=efokhbY5V22jyU+9G/Z/MMv5Im93jzu9Q4QZoiLzwCjz2RvWH+BNc+VJSd84Md9Wi
	 AMXJ2fOFuniSiDNVgy1az0+jlB04ktPRXMzRktkqo3q7OfdSBHe4viZRtlAcim74j2
	 xrFvTHbWMwOLEMfF3yCA6UiOmS7NAl4257to6YFuue5Iqq5q1q01ZPDgx+rW2syMRw
	 T0nxwm/8n4gIizZx8j+7h/AN68eTFpFr2USTCXSDRNAPGWnHyzDPxUDYVs91XCgAk1
	 tFrTYf6POfnW0JfXexCUBow8ZVstYX2Ufaj3lYJwUizCqj793M2+E4Bqi5nSg0adYD
	 H8k/djJdG8ykw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5731AC4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 09:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166781225434.8142.13878604499796449150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ff608f05930649dfb30bd43bea1cf9bd4a86aba72f1af815fd79a1c60111e12
Date: Mon, 07 Nov 2022 09:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667812254
