Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD7E256A
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67973C433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664538653;
	bh=a2lwEsIP/xSM0TvZ4rS7OaLQCD1ScsLXMVmQ+Q+kOE0=;
	h=To:Subject:From:Date:From;
	b=Cn1pnp8cjpnN3P40IrUZHiuo+UjOS9ymJFfvCOzAZdIAfHgvWvYpjFajkfYWdY+TI
	 N9BC21tktwwlRQ/Vq84wFz1XbsSmuc31qnSDDPLfUsXPnfKJPbDYDO8mk6cWqM6Tiz
	 r5sSjIpmlOD4l1rpcJKoldPQZwKATREFNGw2Fe/fekcd1aLX5MFc2fj7hwgbcGtTRB
	 5dNgMesyPkF9FE94Qmm0t3M7OGNBvJL3Ak3h8m/SErrjnhWbsr/gHID+yQ2WfYObd+
	 JN4c/Uj49JloS5l1pmJOrwCqnDwNEt5PZd58zFR/IQtNXAxFszKedHtplteMV/AzRG
	 bKEx9rdTrhhRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50814C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166453865332.20676.633981031994870963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d4f7a3fbfad25278bbca13d2a140ac809cf2c20de90419cbe9499fd35d77b2a
Date: Fri, 30 Sep 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664538653
