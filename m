Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7AE46ADB
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75E07C433C1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669827054;
	bh=+TLTnrRInPZ1AVfwyw5NU2/yDLxT54cie68toGLD7q4=;
	h=To:Subject:From:Date:From;
	b=N55RoP9FtUxFqU1Imkcn8XOIW96ygP/ttIPuYiP5EUoSHBpvT/NosTynDJfklgxwY
	 jPcPNJraI6VSDLXGeuDCwBOBR02MdgSkuhNGfQr3Z0HSlsUyWYDb5J7Ukyol6bvoTy
	 9EifFNCRfMsmlGfbyVpSsZARO/UXGlDxytWbCLLloKNBLFd3W5BmKeZtlwRTPOs9qr
	 DbQ2YHKxpsChFF4Y8AooIClgzkEZxF9jh8aDyRzQwIX2L24ZnbRRrzxKT7ofqQ6Uxn
	 Qf0hEBzdy21i68F2nteJjzsmaVxV3omnWOcPYYDxFL53n6aKqKqrfq0+Q7Otpz6Wen
	 vbYXLtbkfSNRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C829C433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166982705436.22836.8783369032205784029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1bd759e08a9d9aa0d71d6ff4d2aec5db74e093ebc70902a4126d4df9beb5b3f
Date: Wed, 30 Nov 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669827054
