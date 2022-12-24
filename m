Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2277B
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D862C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671840687;
	bh=6etSakU4x1ilr3xnqK1QeVPs+rC4Liycf4gcz6k6SIE=;
	h=To:Subject:From:Date:From;
	b=hUv6r8GVfRIguolvd+1RFJfP4gKv8ehp2prFvRYrCGHsc9VAxQ2GLiBW6tD5HpXyK
	 30WnIZWc+CqiGs1PMHdKWaqe/+6McCrEvxoQkn456alGN92sH1gwpiHswadlg9RQvs
	 0GcgVdx7Ia5FtBDnj/MWgI5riLkBDEJz4k89RQi6wgitRs7oxDpsCmmr0WW7BcMbut
	 MzLZYxocw4Z/yCt/WchvM8Bf/9VE0d939ya/oxyPuS4APUUu/sgiqQuxiOXsGaIYpj
	 aKgL4Ilp7Y72/gF72mnZ2u/qXQg8MHks90aUYakSX47kGg4UINmHLOGH0ntXLhUCxS
	 8JDgGRNWignpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F820C3DA79
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167184068738.7714.7116907869371516811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7b1e18be3023883e5db9ffeb99a840d8bf2e0c94c213fe99f779d4882c6a4a2
Date: Sat, 24 Dec 2022 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671840687
