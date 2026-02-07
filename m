Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27831199FB0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770472434; cv=none; b=judmhezgcnmA6yMJJmFSY9NnxTWjrj9PaPbUx/J56DldslRwORCG52j709CauAWfde9m6X3n6bT1AULy4z7T/cy4jhZZCY+cRYuHmA6o4RN8XEQfHGbGPL/FNPYlXxOB5QwM43dxYExG9LTfn/W7vo86PL5RRndXwBnX15UUJiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770472434; c=relaxed/simple;
	bh=ZBZ1vJpFVKQxaTnvgGVF9PNUYhHjoPOlAqU82HEeINw=;
	h=To:Subject:From:Message-Id:Date; b=JwcB/sRk5fotS9+IdsyttWCI1aJRasV8Hifs7IDUX4T/k36P+svIZFy0cngn76vyk6Ld752NWFX4DwVGbLmgne/m93F/0B4uhrWV0V/qTEKcjbDfKyFTyaOWeFpf0hwUCSzxaYBhVivVoSHLNC4mZHOGz1l7fcnUtwdYc659+hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BfKPSmLN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BfKPSmLN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0EDC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770472433;
	bh=ZBZ1vJpFVKQxaTnvgGVF9PNUYhHjoPOlAqU82HEeINw=;
	h=To:Subject:From:Date:From;
	b=BfKPSmLNx557y3vstKxOSrhImrxa3nlH7k4u69Aw96dp5Dy8ql4sQ7Y1lYac5MKoH
	 aZN7aowQjJb/7RhRehamXTs3nRhvg0NLW36pR8l23Hb+TfU58cqYWU0CMTQqgNivjA
	 CyyNHVit/J5sj8MI39Q0RXv4eWjwOvxEtw1KyalBSITMtZ8+cytHWYFUvLNahZDAnn
	 44nRt8YYBtcX+0Djk/mEnZZpQOdU7DotRCNjElvfd2BLmpxYwpiEKdKajCJyf/5SpJ
	 FmvCpWcM0AkPTbyvyRTvCCexQPHmNnDr2aH/BWjKWg9yBpO+Bm8SbGh6SW1HzuctMg
	 Ly92mrjBHztpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990A0EE0AE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177047243358.18992.7787929824889342302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86eb170fcda914fb6e5a3629c3520098b5af8837c2e354be25771be7d4505fc8
Date: Sat, 07 Feb 2026 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770472433
