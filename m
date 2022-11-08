Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A923815CAE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 14:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 689CFC433D6
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 14:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667917254;
	bh=cPeEzIJxMBd+5GObFNrrT57QAtxE7BH8OhiUrvIFfzw=;
	h=To:Subject:From:Date:From;
	b=K0vKQsyjvJthbP6zJg8wVBg1Dccz7wwI1Scz+HrB8WVmFLeZyaBXVNZTv5YLyTK0e
	 EU2NDGRrSxpfEdBfkk/3aASqQJbP0ck1nTYxYoB9TMPsSU7k8XQ/Nc+0oQRsAppflV
	 mhexgoey/tsizGPaHLfGc45kITNRu4IK2OtIOQza8XFkCmwlrztTyY0y7ez3Pg6gHD
	 jdpERiNZ2yyHevWYJSVhaQ+zhlGL8h3le1Y+rNtStctPgilWz2qnTzoJJNiw/oojQu
	 cvam8J/r8x0Elw6mpsqGbuxljAv4NwqcnbMIZm95aak9m9mOcDmQ0V2JAuiee4/jHe
	 ZOiBqttfBSKHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51DB7C433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 14:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166791725432.6778.14031422366409973003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ba2a0204c22040251b52b3f6dc898e8a58f0711ea8cdab383a5574cd2154dc8
Date: Tue, 08 Nov 2022 14:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667917254
