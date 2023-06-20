Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BACF2AB55
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 19:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1F0C433C8
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 19:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687288328;
	bh=SwcZEooQQ5+RwNwSEkSNJBLfRuHdtsUomB1ZotuPyko=;
	h=To:Subject:From:Date:From;
	b=s1fYxpwyJvcstfI5WlZjG3NwZK0NTo7RKQm1k3WywVj3ALPolZC5uknRmD1knsdBf
	 y2uFHxpRKkPk8jL2rU93aBtH6ulIdnoUqTiIJybcIVHQLUGwsBg8hHseoVhvN+7zPN
	 yXew5bZsUM6lCyLiEWy5zInjSHqrCvFcAaZL8tx8caxqMfx7R7OLKQaoXEGKX8T/BR
	 Kf7BhpOaF+O+QHROjvoieWx0tGshBR3JheqW1u+kwIMKcKyUu0L+S3vzdJiAn0QLR+
	 mYSI8AOwu2DYn+IcKLHsgDURzRgxZvUsOTzn3DpDgwYMFlOMyQPpE0+rb/2toB6iJm
	 pzYTWMnVgvxQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E82EB64D7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jun 2023 19:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168728832868.4398.11749593632697480232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3847a36f6f885fa5948ce16e4f24033a9c52671ff7021e1f9f231ea617fe92f3
Date: Tue, 20 Jun 2023 19:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687288328
