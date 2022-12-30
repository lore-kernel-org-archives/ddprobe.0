Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD9AA1FA8
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 07:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 835A7C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 07:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672384887;
	bh=AORT0IlAzqXkQ7QG1AupPHIlBSPqReDxOQvfoJNCjkg=;
	h=To:Subject:From:Date:From;
	b=E+uPKj62fImKaiyTVdtmCWIDzTXHNAS7wBTmtCC5nzaWCB5B5SuNRQh/HhnIe6JdH
	 Zn4g8zmL1BzWxU2J7nhIrSYBCy5tOk3pLGzv4igbNCZZ9ucop6pd23r9A3oAmb15Rr
	 Vone+v+cyp6lLiCB0u+LTQ5lLmwxci2fm+Kb16/UQmmEX0Y0F7QxnIDxKo5WL6pWdt
	 MAakm6Du5jdVEdlXYf7TaPhPQDw/va9DupGk5jzx5u1BBEL9CydAjB0XVrC100wLp3
	 W2EgJ8LU0hk5Aq4osukm6uoTAPLCX/Qj34YVnZv1ZGDm0QE5mLYIMprttyx41OumL2
	 Y8RZ8TwRvyK1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69885C4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 07:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167238488742.7912.195764173675426431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df6cdebd06fd121b9554223f0dc4eb05c782acafb1a4dc6b0c5cc631b2ed29c3
Date: Fri, 30 Dec 2022 07:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672384887
