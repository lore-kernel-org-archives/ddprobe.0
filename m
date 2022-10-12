Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B916428EA
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75794C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665592253;
	bh=Jorfn9L7xTubQzJ1ZRiThWxJEtQ4+Utz9YK7sUiWIn0=;
	h=To:Subject:From:Date:From;
	b=OvrEaRdyc+GuJXdkMOVWCk0AzKsD+BhQGNju1k0klPxO03THtkYlJiD+MrOOkJgIH
	 09MJvIMYJAqpVET58QVS/bLErEAk62fLi9NXfJ3wgAP8R+Zoqh/2U3o700+cVQmLiO
	 4k948AjBNkq1LpZN2wIItgGJrwQZGivqgQULt5ZDkIeMmzNecxpT0aAkX/HG/9EGl3
	 ANANWUqR8A34a71C53pjO7z0AYLvJtmoaGMMjP+Dcg23G2rKlpNKydiLwgEt+bmitr
	 b9XhgPP0xV4eBxZCGf3IRg6c4bmIyH+zGuqspvUakhRUbMEANfiyTR2RoWwPc4tlrM
	 4kdFkr/QAj2mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55FC0C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166559225333.7519.11478558579287554543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc95da2c35bc773aefa5e664ebf1cae21a1cfd24b13ec4d36d90c483128096ee
Date: Wed, 12 Oct 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665592253
