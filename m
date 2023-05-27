Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6079F7E
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 07:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0ACD8C433EF
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 07:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685173686;
	bh=FENnrzPyTF6JxRkhdfBsFKQXwaQwRLSRj0YDQkfW2Gs=;
	h=To:Subject:From:Date:From;
	b=gecgctzSBYlw7Ac/aFGqU+Et/E3JBv6oUFPMZ6B/ZiuooDfeApvsl+X2Mfl0dRECw
	 vtaUSqcvZqrWnEz0DKdZh+asQlKOqW2GAgrFn1eVeQL0aDRbIWEuLtnSllg1oA6GkI
	 0M/utd/6UoL+2y5HYZz3h+nigQCGukkVupu2qVQ2DJ8JtJBq3B5TMuRXrsq4zJCOfP
	 NdRZSjnOzt94ovlHl5tQMC3nldR/xEynFcpFL8pyOi5WLt9N9pyRnok3mn1K0vAJpH
	 HZCAdcacEUIQVouTu8RwYzoS6qY4eB7d4458c+qxS5ffqsCjgaIGFFy0gfYvY5iufE
	 AhnfqJ2jMP/wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCCBFC77B7E
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 07:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168517368589.2374.8973776390297730109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a731dceea9fc0df73e349c15b639f96dad866df818e047fc8cd94045711de0fd
Date: Sat, 27 May 2023 07:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685173685
