Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C51517C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70597C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670247054;
	bh=BdUQlKx/vrrCwaYxQafP08+EOR4p79ptSiBRIE08Am0=;
	h=To:Subject:From:Date:From;
	b=IlL9fbOX1Jjx5HJIDnB0ovl7A+tsBEpYiYu9ASHxNvzXbVyPXdBnWcyUADDjwmlXZ
	 TBiP84DiSjT/+g3HN8/fNiMbtwGQgshKGU7Iw6ckoymTZb/cnx8D6rSfzMEumZAzM5
	 onSgegG8PkDyKrt0OXN7/7o9+QVQYmUAJFIxJX9t6Jh1wOy9cjBjtC7rcPDf9rWDEj
	 eYT3oStCfTihTfY94fJVzUzT6Vw7iaBUFF3sytVPz/Eu6b11sQz4TAyW9FLCK4kCLm
	 oyMaZK5rjHtn1TmU9v3lhst1MpEYtlNf2ysw0kSr2ur9pOwIYtSZaqlRR00+l9wTY7
	 UCtXQh7eDhzUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56342C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167024705434.10858.7336704680140794618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b08a3244d673f0ed7e2d6da71e8dcdf2b150b3d3e9ca99820bdacfc1c7fed306
Date: Mon, 05 Dec 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670247054
