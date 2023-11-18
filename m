Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5AF1E502
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncAKFu62"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84809C433C8
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700348896;
	bh=TNHG8rxiOwEfLYjmBOU15TFZKlFr0AoortvMjVzCxK0=;
	h=To:Subject:From:Date:From;
	b=ncAKFu62R+V9MG8slPyWvop0KdPLNYqD/W698VADUmJc9xvpApom1Th/58ey0AEW0
	 GwZmM9VOb61eEFim0oocHgUJQR+Jw37gzqLdi96zbO/VW8bCghGKPeIeYhIi+NUNPK
	 3UhOdyxmM6e33NN2UnkPdzCtcj6+YvFEbsKD8kjsVhyFQKdR89MGLM/NFZ+JD6792W
	 HJfWglIQWNOlU1aTKpIuHOjlC1ZfKvbGUgOWdMBJA3nvoJYx3oMADcP3Uuor8+8ct/
	 6U9qaj7j1I2YGrmaJeg64lwU9iVOoBTtITVOptfyi+AuhF/PFGKaterIg9Kvk+oVvY
	 7rqCWXf0yGmmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6851FC2BB3F
	for <ddprobe@lists.linux.dev>; Sat, 18 Nov 2023 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170034889639.15082.2205741333331358153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 317bd3da804f2de7508d4ea53e0637cd93c3c66df658498f5190136ae7a0bd0b
Date: Sat, 18 Nov 2023 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700348896
