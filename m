Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDDF64E62A
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMtTyaAW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7632AC433C7
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 16:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700669896;
	bh=vYDQrnpaWXidmdmE+mvSM5Mm0xu5bko6cOYv/++EqlA=;
	h=To:Subject:From:Date:From;
	b=UMtTyaAWIYL1X+5ceIntsOAWLb4pBWWSDV0XhawFlfJfV5HjqtmjRpNkVbm7AEtrI
	 +Jfutx7UGa9GGSt6eYoC8WjKsK+VPnDjycr2wwrW8ZMV+0FdHhhL4E6U1dhuxanW+J
	 2xMOlJzJDeg9HmWCJDcbPmKzqd9mqK9Pt8+tOUM+1i/YYgX7cwtUPJrd4N5r9kcOz1
	 I+FU8KZq1f7G+NoDJjS1+ttwt+IQnbpHwUBUN4u7K6v5jlZwsFAHVjljkeGJGdNKrC
	 J71BUuQrxptOKSoMG5+i3naRuDSS7oHkWnClpj1Pqa6UTnQy+3nczgejlyNh5Ry9cI
	 xWMlWgxTnSpIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EAE4C61D99
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 16:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170066989638.17656.16313170652889888822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71256be1c4ffdb3ec7012561ecea1ef50c3ead2e7439f7325dad2c69856ef187
Date: Wed, 22 Nov 2023 16:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700669896
