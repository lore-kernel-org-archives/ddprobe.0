Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C96386
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 11:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE447C433D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 11:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674298926;
	bh=BIJQlCFfRyz+wmgGqxaJuFgFH0VOpYBn7qcjZUEG7DQ=;
	h=To:Subject:From:Date:From;
	b=gYmOQD0bMMxf59pRUVhkREN6OOgCpj8XoSBNnNem/wtaM4wFNOhmbJaW9xJeZb6Qd
	 yUq5BUJqdWXnm16bb/oSpUuTwyRTtpLeLjBXp5BJDzxCorOFUjCm5AsJfoMMjGLUwF
	 t5rKXtwuzGYE/nMdAO8z5map05ybJayOhjayTi6q+ngYAgmt91MTKtakgweVJyyTw4
	 EFOGiWAqIKB16LQqmLQ0peJpJKVGCHw6OX9OJWlR7Zh94VCwklIjGqm94zITETmAJi
	 2S6V1RMAiE50IJlkbnzUe2j+Bw6VJh4UlylJoyYg4Zqtx/F/G00uHnK9NZQUOoLThy
	 WBkfTwHjkVcGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4399C004D4
	for <ddprobe@lists.linux.dev>; Sat, 21 Jan 2023 11:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167429892583.3149.2097618865972544070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 604af697d3e7700b923332842f8e25f2aa61017f9ddfe6a3a1b077b0d28c9bd4
Date: Sat, 21 Jan 2023 11:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674298925
