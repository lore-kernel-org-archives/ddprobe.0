Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED9315B4
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 02:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CEBC433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 02:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679537345;
	bh=DAjbnLJFLXN56tJyQ+iIBD3bhSnKpJtYpu07Zn63ktg=;
	h=To:Subject:From:Date:From;
	b=rJDRVdcoU9nElDY6aVZsS4QgzZx7xJay3wPlGj7qN1aHtkGeLdJJqGlTx0cSwtA8m
	 LQFPmemTSLaZyFd8AkEq2RcJPjf0yAzyICqd+0rpP9NqwNaQtC0OiOxM7rQ9AB8Zjw
	 Q9lleZGRRdWcZiEzlSFpXHevBbjaAuTsVhkbubxqJ5xPmDmAgs3/cz85aMJw+AKr0e
	 qyThBwHIBGn4QbbYSGlSYXE/Vg6P0GOk9lhEgIBgxQnfrHsAqV4d/0oJbcV8VZla/D
	 HE7cXHTIGNt3LE+v2FysqRgQZUOjAV1iXpL6dAVU+dHRkrYu9h/arp8UOOjpf9Pafh
	 QdR5MDsbdKa3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF97C6FD1F
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 02:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167953734573.14694.13860645534481427520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79d9c8c554d6ee73a097e1fbb4a4fc3e1810e9cdb383438b2e6da5193f523f23
Date: Thu, 23 Mar 2023 02:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679537345
