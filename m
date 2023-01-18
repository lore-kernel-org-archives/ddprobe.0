Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBDD72F34
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86BAFC433D2
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674084087;
	bh=cZj43uOmBm9zuH9pk/IGkKzKzcP541JtGbfOW/hVxKs=;
	h=To:Subject:From:Date:From;
	b=N4BzX/XgAZOvxKbE500pDTMqeqJtWb8VJvXwgvbiS052Bcxz0bIPATBmjzC7Nl2Na
	 csZLo6LBqBjdhvJwfk0eDm1ia6nqpf9pbe4r/rwvdP+yILPzqnS+NrHQV2ydnlVIaC
	 EDlgssOA58ZGp5Wf7ZqUWaJ0aQVOW/qJmoA3wjhH14WGtaSN1ZIx21LfhuBQR26Kjc
	 Si0kZPUzkUVhgSF9qFIkWjd9OEBUMk0JTSHjS03b435JtS/4Ny4jjDWkpfsCnbkwP1
	 On9S/PD2+8/pLGvqOLBrzW1Ra3EMs8+4R5kvejrOif3ZLG5MELQ9vx0Dsq6MAxxeVF
	 yJQNBJ4GCQrqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 614FFC38147
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167408408739.5872.16942974047248939973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 954a21e521fca513009cbe92238d0846da452601456b0a27950261ed3cc220c1
Date: Wed, 18 Jan 2023 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674084087
