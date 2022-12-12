Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0ABF6FD9
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 823CDC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670881287;
	bh=KflEJO1/97zU5L4iA5WmHixmlIegUXQyUgC6n+doQ1E=;
	h=To:Subject:From:Date:From;
	b=WfDBKje0eq9D4YyfsqCeBESo3aViomuKKXUzhcj1fbtNdyqt5HnJjo4QsttP/4ys6
	 vOsfAjTL0gE+SyZwzaj3KofYaP1SfG/FAIgsE+UNWSxLAwn+GKe1ws9FNifa6ToIQt
	 YfniqAUFvXqeXLzXL3R2vlxDWzq9aGrHBt2Xhbf9KeJXOmVf3BSAMibTf6MCpyXnll
	 5TMMsHpiriAiqC35HqT0eyCyvw6NXEQk9tsP2ZLtSLtgcZZZX9LaEZcBQHmzGqG5cL
	 NIdfa76rlbot4ZvzxZo+9WqrL7SvIi2TqJvdEqAVS3UxhF4jOvCSGWk9TcxIOCE4mG
	 NUCySL2Yyz2TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6307AC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167088128739.9973.12658865893903061714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 752b2cb4eac4874c8582ec5f957d7843b4447c7f31273169be419afe4cf79b6b
Date: Mon, 12 Dec 2022 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670881287
