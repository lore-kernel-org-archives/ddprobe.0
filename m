Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED0277ED
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84FBAC433D2
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672110087;
	bh=Wramb0ryhbEwqslA4W2jrFl/e4PM8tTr3TS1MdlGmG8=;
	h=To:Subject:From:Date:From;
	b=ilVbkU4bghmaXgM8GyiMYPDYycFqB36g2lYUX3BRoq3iYzk34szI9EIylFEt+4Kgg
	 nOfffeKsDDFMgh8KqHYeT9zRim4oM3X4ISktB8h/VL7kkc5zsjFJDXtbLmYm/8i8vH
	 q8+bXg39dQi1iQhTG5Il8m+LfLCAsh2H+Zo3CdYchFnBk/MvHfayvcnylmi9a8lEJE
	 16WYhk+F7mXPGUxyg/RznE60wYa1bq1c521nl9TFe+eTBVEbWziR/3CcmJjgAQByvt
	 fBkKcTRgKSxBzW+hEVtpPbRSDKMCF/PvUiCffDXhYTuHB5TH/vSTc7asR3tLIdUVE5
	 m5WsWY89gUgxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63008C3DA79
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167211008739.2684.15984888453292599851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd878d8581b15ce9088efcc3a413099645917d9d79c5e8fd6677be1a120ac3cf
Date: Tue, 27 Dec 2022 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672110087
