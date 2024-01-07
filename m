Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F035012B71
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+7soaAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D9CFC433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704662896;
	bh=aA/1eQNc/cqzA4rjU2WsP6//SxuoAVQMFHHbvO07xT8=;
	h=To:Subject:From:Date:From;
	b=d+7soaAnSoSFRvbd03iTZImC+u9KBAGjoVjfnJeS6FLWMEA0qnLK5cOXZ1Ey6Y2Rf
	 NZqFjnA4HceNYrKifGVGG8vl5pC4MvSZB7rgpP3v+Kc6nvzCC3q1sTVchj1NzR7+xo
	 IGge5qDa3rQ2MlPbPhJWQc0RAFqrHIirCB3MwfWQXJBSNLDGGXjmOstoE/QIsBoo73
	 orh3jEheRc+tcQvus5hus0YggZ2k6GAUKrNSQGu1mjCljCwSsexNhfz8usoPXdNrL2
	 9fvy/VF2LRJgD1I3yX9Alh0PdykyKqaok88/tw5DciXpqpfStAPwVVX+DwkZutrGFc
	 PS2Ji7GeQpNpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62993C47073
	for <ddprobe@lists.linux.dev>; Sun,  7 Jan 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170466289639.11323.18236869069493177099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf2d894bdb4940afe27a01643f5a074188008c28c7001dbd0ff2f1fcb0635943
Date: Sun, 07 Jan 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704662896
