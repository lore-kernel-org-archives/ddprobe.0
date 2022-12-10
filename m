Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D96BEA31
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9347FC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670662887;
	bh=u1cye91aQQ6wk1DglfVnAV/qqt9E0NCxD8663oUAraI=;
	h=To:Subject:From:Date:From;
	b=GC0HguA2DGjFz3+ezlc+pgAHX3jKkqlFi0PrD4L1lZsm7slUXp11opyEgjkgfzWPI
	 LJh9q8BL75slzWzW5mn6EMTRb1k+zkT6wQspzbC3nb0MjvT6y+iiQ/aGtFMOKtJIzd
	 g9AEGv/ZwDzGpLal3eGGtv9Z90KfCXzXzMfpE1n3L+Fz7TJROi+h+otai6ipRyTPpy
	 2VW0Eb+IWsf8gElDUbzx3OhYEXx8dqmNtohA/5EIDAzZHjMzzPJDz7hElBM9/SZyK2
	 AVzb21nWDrRBM3FF+DTELrYTGFxVZWTJmvg1KFbP/Wb4RZOs3kUqeX1HABhIKR2r4a
	 Qxkk+5iaDbP6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D6F3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167066288740.12766.12498216155376812244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7906bebd9229f48f2329ab38c0cb7e3824b41bbd5ffb388c4e5533a3304c3c7e
Date: Sat, 10 Dec 2022 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670662887
