Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3582CAB
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 21:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7C78C433EF
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 21:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677966425;
	bh=P2KTY5P+e9QuR94Nap0i9dRAdFtwwtAnRGHhw1cOBFg=;
	h=To:Subject:From:Date:From;
	b=S8GZu86WF+CVcvodCw7MkKSFnkRmJ6t8T9HW5PuXC0lvovlwVlAYVXJ0OnySCqgW9
	 eqXK7b3i2PnzjBA3bEg+cztzbnemtLRkdYJ27kD8ptFC/ZBdqKqTN3r/So7WXE6rVQ
	 2b2Ns3IwscPuoCTjDQKwKhdDWrYajShjYZPBiH7w9o/KUyL7OUbTRePRCAgi6BFHPG
	 LFPZ5zJa2Ti+dGSsWbqxjfsnMwVp2vU29IVVp7viCDNUvZOeqNTEJ7nJBOwo9Yw53U
	 DXbsBWd67PQmg96ctUyZF3ym5uwQiVqG8iA24C1ZrOHdf0F+5W0eEd6cxax2Dheuvh
	 mvFl90AbqvWaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF27C678DB
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 21:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167796642577.23389.2226001420329570124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b57475cc21fd77a9d9816028442498611cb32b009941900a6655173ccec96de1
Date: Sat, 04 Mar 2023 21:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677966425
