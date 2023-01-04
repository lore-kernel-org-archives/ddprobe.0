Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D034ABA2E
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 23:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C4DAC433D2
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 23:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672873287;
	bh=D0fHTn8CaLLf5xlwqiXfumUP0ZSgqEC1/1j6ZOIvqRQ=;
	h=To:Subject:From:Date:From;
	b=kWDLd9TZ01cUWIrdPjb2HTycv5ozux2bye1vH0osCuNTKfLxv/5QSIVM5/bbyxYVF
	 y+/heJFlyriYWQDmn9T+PGmJvPcZTk4kKkSejvjQBrMahag9208vXBd3GcmiPQIDJw
	 fvsrYGk0k2CnuoEZ4HBM7iUD70nms3NfnmV63vM9JQwr/tmMu9AoWSW6Ap/LWfpa7o
	 AUHUx2CLvYve/PJOYz3i0ul56gyWntJRN2QfY+7SAwDSTiHMzjfCGS1vdXvzD7mhv7
	 Ek9L2SePupmEx18zet1+tJYSA4YHCaVyxNmIgfwym5pfaxOOVIqCvaOciGRUKKqVdn
	 H8ashSphxsNXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EADBC46467
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 23:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167287328744.21194.4825029846649362875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6111786169e14777bb39b7683573fafaedeabee5bfd23bb836352519041c24cc
Date: Wed, 04 Jan 2023 23:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672873287
