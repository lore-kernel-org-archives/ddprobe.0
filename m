Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C488228EA
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B0EAC433D6
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663137653;
	bh=q1yAErlm1zMyybUggG4kipMc0rJ43dNJwglAeLOpRU0=;
	h=To:Subject:From:Date:From;
	b=l5bd/NeqHFxcgrGJ6qoE22KDCaK+S8Bt7Wejqby4j2SJJLKcrHsAKCzBsOreOyje/
	 SoQuELy1vGNr+eHixlQnGaZnQvj2CSwdi+JYM2niGHC5RvPP1rgPUjnW9AEiRpHT02
	 mOpMRYAGoEL04NJGD4RR1pazItJXeZKWAyBW19eu6RXkXB0qY9NeNrW/Wxyh3zve6k
	 +KahdzlRmA9drxTqUxdAY7JJBM3GaLXR8Nud3SujVhJZZXbAQ3y5RLT4eC2nLXiaFo
	 K3olf+1fqm4ZMlrq8XUUqQQ8hh0owgav82nqroCsDmNlYQcgQt/y2tmtA84rTqyW/R
	 0yvcO0YBYf9wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F5A5ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166313765331.29105.16980913295335243081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec0234e478354b9be25f4af59b0c8e7c50a7eb5a2b9ec6569b3ae41b1158070
Date: Wed, 14 Sep 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663137653
