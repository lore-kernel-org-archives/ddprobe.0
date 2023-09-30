Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92F749CA5D
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 06:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB0CCC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 06:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696054569;
	bh=BGOQ8xdeX13sB2Rx7uAuc54bYh4fXwmFx6+dQuaHmL4=;
	h=To:Subject:From:Date:From;
	b=YNIPF5fxgLXoOjMBAWi5tb23YREYyVflFKZmDsPrJ8YpF/mfonzn50P0YyM5JGMkQ
	 si05jZhTRty+qWvTTMnuAMR4AWBI13l26LQhZJhLrwr7ospjwi9AadkUv4TPpij2WM
	 KFT+1b/cqYSr0Hiqb0rTHxkD5SabghAgeoJxFtMzoDGU0w8JDBt3aetijhJbWI5OlH
	 HsuSe+8NXqqGmWYtl8WSqwQnQ8tcC+jmRiMrFrmtd3Zac++sRF5Y3RG5ysYEax8ZnU
	 VjBYfRSE2aMWQsFxSScqcURu4uUFAkAJsUvlAcoNt61Zefagnw5b+d59HpwChwH7cp
	 jKf1L2JqA0QTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE66BE77354
	for <ddprobe@lists.linux.dev>; Sat, 30 Sep 2023 06:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169605456883.32390.10421495734034376218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66437e313ec0690a3f944619740f4690f446700fc0cdd6737713668a3d6f4e54
Date: Sat, 30 Sep 2023 06:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696054568
