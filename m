Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5478F53
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 18:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A9CC433EF
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 18:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684088345;
	bh=HxFnRVuo13KP1V2TxHQTZ9s4BykEScELjWq20eAWGEY=;
	h=To:Subject:From:Date:From;
	b=TpvM8Zt5116/s6Ak+K8W+Lb0MrS+38ubI/HJjJ7YbKEM8qEB+AwAKvKBaILhbkfgU
	 MrWm1qVj3/5o3mTuoAYRf7D1bDipMUSQJBqUXlxMRsXeeQoh9zV6IAclRByyAwNnpP
	 K8W8Uy5GPirMp0vUODOkQ3wqGfvvcCArvNJDw4F29EpiA4IFpr/+AocfjTz7z9ciwe
	 JhOuKB8NZdqnS92BO0A6vdw6IZy1yr1uhgBPWBhUZzaIZ93U/sF1RUTXG5g/GF4BUI
	 CpJhj+h5KOz3pVVctgM8fta9hHbc6HjW3SVMGo1NrbI5Za8sWaSk/l51myGgZwZ7aF
	 rSU826nvgImog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A06C7EE22
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 18:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168408834574.15241.14213141238489125240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b8d5e08137fd268f83788df189280449616d59bc3c46194868700ea87131d5b
Date: Sun, 14 May 2023 18:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684088345
