Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A84538D
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 22:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4FCAC433D2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 22:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674771185;
	bh=CmvoEekyUaf8Hp0fWGAwQ9PYHX5NxvRDR+P8AfeTKKk=;
	h=To:Subject:From:Date:From;
	b=jEKM0MnGSzBX3N+CdPkrLa0lzoX9YeBpNqPhIBU+4Rdo2BsLzFl7TJWsOTT5+ic5v
	 sqyXMhR0Kx5Mjos4I4ssbDOYUwMMQ1kOb1jhE92rizJyn91VJh7+eNZnblN8wZGt3N
	 p3IDx5naWKzYp0lTc09+ngxqapDkxTS8HAfz7TJk1qYA1kP83kdIuBWLN6Iv7RaHlr
	 ImmRUY1eOemhMlZ8qkoWUXqbPDm8Ifrk+WChc2FuKjMIYiLPcM5OFRWUFnyEZVlEOw
	 f/QLaUiATk67nNK3jyqL+5tOvSBv8Df45QNcTZ4A3v7rRgOaH6PX03RUY0RHX/vVIt
	 HzR2SeF5YbVpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7AF0C05027
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 22:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167477118580.26496.15547005481549739422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c114d0d78e9d67034b5df42ca0112ea6ddfc48e2a444837b18a34dd2d4e6b49d
Date: Thu, 26 Jan 2023 22:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674771185
