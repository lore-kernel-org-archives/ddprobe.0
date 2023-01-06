Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F577B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 853C4C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672981887;
	bh=IlPRhR1GJsEhqi9LgnD7vs1Ot/k57jawI0lXy67cVPU=;
	h=To:Subject:From:Date:From;
	b=rXVweFO7kkFgeYjv/5abJFyxY/UVbrcgzqgVs0idCXFfssFgXDRX11z4gWrMkuh6g
	 jk0di1kq9VfTicN5bwjMcI2Bi9y5lfb89PgBq8AuEpO40wwzcb2RfvKbHIZ6DWyAK9
	 5bZ4VLbZHn1pocmkvwlHlfLC9FArKhlYLmaCW00mgmWEiGpMktBqfxTeUnaRQlAhGI
	 gOAx2keThfj0JIU2UGjqV6ClZuJfE618hY7QbEFzztBwqrynd/pUzOUKwaRTCZqsvP
	 1ApNQ7CWd5+6xjimtAY7cHzr7bvWtZLamjQy8ezayefK3xqwjsf4E6vLpDhSssp71p
	 kMHuuUueFXN6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69429C54E76
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167298188742.4700.2843948355204381493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0321597de685acc4654f809c909d7c3618b31179215942355220ea1d98bb4b48
Date: Fri, 06 Jan 2023 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672981887
