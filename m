Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CBFA4C85
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nSUQcQn6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88F0BC433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704862096;
	bh=9hOYO5Qw52ZKOTenQ9o25BiFwvqGf4XYyBI14fmE/kE=;
	h=To:Subject:From:Date:From;
	b=nSUQcQn6auT0J4NFV9yYFkCem2h5cJI6UZ6DZgON9blvDzGtWh0kwohRva3BUpDic
	 jyP8YUNkv9AMuen68WtMODHrRgZahT1dk/pdO7O4jkweVdwZYf3lyk5fcfcyz0cX6h
	 XWEp/QrJXvdg4rYDG5ESEtRd60LY9q3iexahi8DSBsE+iFQS3207xXYxlpVr9McIIB
	 oQ0QKAXtsOj53kfD3DCxjedtEQF7+rvoZtG6laD+qccRNVgFnUrR1idGhAx4GTa26o
	 bXTJnD+zs//goZ0ZnIgrSZi5+vK8nyEFGYQbE9zWUP22WKKlKFap9aM1tNOoc4w6Di
	 h/XEjwbho+hiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B1B1C3DA6E
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170486209640.1761.410408582726814562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f043d55672d1597df9b3a3d119a61f761aadde597c8bd62fba48c16b1db3266a
Date: Wed, 10 Jan 2024 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704862096
