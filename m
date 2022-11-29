Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B39BA28
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 20:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DEE7C433D6
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 20:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669754454;
	bh=BMtw7n4OjIxhLMUEwMEnM1qRNzHRg9ctPXw5KECK68M=;
	h=To:Subject:From:Date:From;
	b=rZGOIjqpjXKMai4WJXdaumthKL6OoAvipUhKgw1r62Tbkf7mxuW1ihqLoHn6U/1EM
	 AumVtNrsDNq0zVoF5qr1p66DbmAupAr2Nx7fdMHietsab4NYN84PTdWhkZjhE3ZdAg
	 ofT/CXS6I3HXpNzL1RpnWRI+CL49CF3W39PgtEXTAIMe9/0vyq2ELpDeh/W6vZS0Sl
	 Mo0dI4TOvYhE4VoNLmNZYmYdzobHoaPW+aLJhd0zpRd1bj56h0CFjc1XpL5Ptwh2K5
	 d5YJLOaxvSV11OCl3dcf6he2gA1mTHczNV+7XHgCl7hcmNKocH6y0z6vUrPgMJQIAb
	 XoI2nYsMkDEDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E9BC4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 20:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166975445433.12456.16144259775754903936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b16545b4e7639cf7f1fd59af2c9f227f40dc55561d4b617f42640d4685a6fdf
Date: Tue, 29 Nov 2022 20:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669754454
