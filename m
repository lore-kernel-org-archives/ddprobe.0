Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C3E10966
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 18:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA3E0C4339B
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 18:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684347306;
	bh=gAQHcWigEGcdVCIAmGDMP+nIDtaVnhePjmbRwVx9F1E=;
	h=To:Subject:From:Date:From;
	b=Bl6EedF1aDEwg1c4r+9Q8bLh1zKGq/jXUIjKJBgtVxyE9vCPJQIT/GJ/ZvN+qWO5S
	 1eLHirjkVW+w2dSCEuhLRjbQa4WFxOfvTPsRObMVhJLXVW/L6T6wJlyXgYMInCAEd9
	 CzGcTkxcCY9tcM+uH2iJ9YTOaaKqQshC9PKxRahC2IEnoHo0H6Q+39mt0K02KZ9ze3
	 pM0nW4X1wYF/H8Htcc6LiolW79s7zWyRL1cdqRqmLJzyG3PSz0q9YlywA2bESpcN3d
	 33vv5wOoZqaWhkURF8o8uj2exTDZ/wyXcFlU8XSji5WyPlZO/YcQY4aO99+k8GyctL
	 UFC+rTwnc8fuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C96A1C77B7A
	for <ddprobe@lists.linux.dev>; Wed, 17 May 2023 18:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168434730580.16512.12760095373422097486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3fc3cbdd324083e9469d3d1007209c5af5daf55bc8017eb2eeec6ae509c2196
Date: Wed, 17 May 2023 18:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684347305
