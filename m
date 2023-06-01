Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A460679DF
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 08:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4862C433EF
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 08:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685609705;
	bh=UdLQl2O1OJpg/wGhyCT5t7ed9LsEjIklNLb5JRh8oYE=;
	h=To:Subject:From:Date:From;
	b=SknozfTTeb9jYVUXZi8pZyzbQx0V8rDlniqimT7w+4Qs9jPIsQez/YcK8EAMX7120
	 Fh0B0LFXoPgT/OlxDs5IkOBxx/JLNJIqzTSpGhCTVJrvAyEf6dUKUHi3rhcxICCkT7
	 q+olEBs2PaYnElFN8jHHrC4QvRg3GF2BHzGzAI/REvGRNjW5zEsThCxcKc7APK7u1e
	 OuYpmuzNREGCtOPAhMeaTbGVfCZCPXkTwS68/oTjSNanto01N+LekzZSiA5fuvRqeR
	 xKe5CjUuzbh3X5MIrrMM5rWhh7LotA+dA1+iRgKVhUobJxmROJ0IFno3siQyvOuqEm
	 1EjZS0y3oXOgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3156C77B7E
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 08:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168560970578.1112.1297243082888591844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e09b547b12318cf4328a0ec4e3752d6dd117679125f59e6d760c4079341d22ae
Date: Thu, 01 Jun 2023 08:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685609705
