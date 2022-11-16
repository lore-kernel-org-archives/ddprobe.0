Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B42E75CB7
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A43AC433C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668605454;
	bh=97a4OcLm+x48eVpZaqvKjTuBqyJ5tLvA/Ib2mqWLL3s=;
	h=To:Subject:From:Date:From;
	b=kZ26746YTP3mPEdcZwKcEj36vzpvTUDjv5OTlO6F15XNS5rLhKhO7xmWdq9MX3+JP
	 GCkC7uSDyOCZv8u9oknSW9xTvssmH4XYxUq6ukR7OOdXACGnDb6wXgZGShHISQk+8q
	 FhbYKhEWvPvf0d5emhS/kVJaey6WMvmctBriop6rGHMOgslf57L/cpmsFZcEMW9IF1
	 4yzWJaxOgAiO7Bp6x0sbnK1HXdUo267G3ijNfigQs1BZqbdLAzpy99tsmckX8N+pZC
	 WAr0/QILbyAM5mlrKXnGRzyY1Pb91DDzOkCzU61vBrHaEGv7a3UEajXn8TLPsg0cTL
	 BFv+2piSLZwAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5307BC433FE
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166860545433.31865.4540853981185897860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ca02883456ad717c56653aebd8b46d7043bf8e3e481bc6a9d3d9f220950466
Date: Wed, 16 Nov 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668605454
