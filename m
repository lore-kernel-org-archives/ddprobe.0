Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C792F3FED
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 14:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 792BAC433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 14:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661609452;
	bh=MiCO0pODxzTh2Xs6XsF7r8/EsUZY7lvnAns3QSyJabs=;
	h=To:Subject:From:Date:From;
	b=kmYdu+lytWpgXGPJ7iNwDgOC/zVkXV1kTMxGLOTzRitX0UCsl6Mz92CE+90BxVtWv
	 iGqCxUCtb0RXVaPS4pxyz7BIcOEK4aI0Q7tu0QDD4zl+t8jMDdVvh/DfHNS2HBLtPy
	 lhNKjemZVzmdY9bxZMnqckFtenQTmi5RJ1MCaQBfpPodjHs1QRXzw11ArIGaP4N5g3
	 luDVbD0Xyhdflzir2bZfSp2FN/N7iM2DWy1DxFXtI8dCSCngrwO0fO+3W1w3LRL0eS
	 os7n1l6x+7nkgKHbo/n16I/ffw3MdA0PbSAKOd50bTiqqbIndhHXAmp0xpMfcjmcH7
	 KZLc0Nx73v4ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C559ECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 14:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166160945237.752.2533603145781838654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46b7473546f815016428e45a66a5fcda8bb8c1c05b54d34aef30fc2d5355be97
Date: Sat, 27 Aug 2022 14:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661609452
