Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7AF318D
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 825E1C433F0
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671987087;
	bh=O/tiFGyiugIDADcWqGZ6z3egTJ8yMy30NcLPX/t/TBU=;
	h=To:Subject:From:Date:From;
	b=FtNhz+Qn2SbLPCmLO6RT7syxPn8zvSKagNzX4TafHJCoo6Ac14ZAAtbxJjrXvqvJK
	 QlqZJOSTY2N7Lf4t9xfyLmgT5YTt75ldQKNGGnWkiUz40Wfvvs3js7Mi186xzmYIU3
	 HGLqJtR+5aVucUeFoQ6Ezoh29Bzt1Jb73Au4L8gIn6bzypUJgMjO/RFExty3azLma2
	 jJ+egHIQJ75N1RQW8qjxoWAiNgzHQVnCjrIscSceIQBqR8mIXvudg8/Vo0DU917K4u
	 DF2k+gH+YL6dxKCPj6P+YHqlOz04kg5D7Iz0ULEZj+Z1h6KiVJrI+UHvjOadWY710K
	 BCsRAcmjSFg4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 689D5C3DA7A
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167198708741.2131.4725611461172943566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1b589ac76c05fbe463dd13877633e741b75aef4d53e77b7852d35a8ac9bc65b
Date: Sun, 25 Dec 2022 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671987087
