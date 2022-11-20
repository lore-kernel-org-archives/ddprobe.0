Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA4AA64A
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78882C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668925254;
	bh=LNy8+XB93W+utDqE50IqDX6zTTUQObzqRnFVBQWyDkQ=;
	h=To:Subject:From:Date:From;
	b=WnVftIGhdqC5IRSBEFq2GQVRRnLnMD7Akx5r4U78Ih2ECjCsBl5COkmfrStF5EZw4
	 Z7h5xXtacWfuingzNSvlM74FSALUSNDtn+I9dqjvhP2SAInmHEQdquZxgO2YM2Now+
	 onkJQOn9D646aVORHqYYsRQWV7bSnxewv5cb/c/6xfL+pnhTumQKtgJuXU0kcFpTbd
	 RJXDY10N+DFKj8wINOy+pS0jCsh73sl6p1fsHYgU9ESe4VazkpHbuuJQifAJj+gLnv
	 RQH2x7LxPsDCjl6pGFL5JoRyYQAx0Vjdg+YNyNTd0+rLdgtp+LsZqBOjooWEicQAD6
	 Eg9CI9qC+GzlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C574C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166892525434.32489.3489977304296545179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a2ad5925b3c0af3dc9e866407833cadd6369ff8db5eda3993274bdbd0396a9
Date: Sun, 20 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668925254
