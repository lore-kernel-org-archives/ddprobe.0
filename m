Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEEE67E
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 01:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70390C433D7
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 01:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669597254;
	bh=WVOvBp+04wmjpasNhfp3s/KZHtdUQXgBJdBAwKwcxKI=;
	h=To:Subject:From:Date:From;
	b=QLsaTdVAak2c0fUKZqI1QJS9kZmIL76I3SD//qfojRcLrdLIAqDS2AY4TMlA9RpjF
	 W4dUG0knRmPGFBEYvvbJgoD9H63v9ByFNftMUFX6WVJYyM2CP3bReMQYGcjRwQpzMe
	 irQHekPT6Vn2uzjbcDzFQcphKKfsdIn6Ph/HYsX1bXIDK2KCEZWSZU+n01lh8tJNti
	 gZmUnlEozcr0EtN/1/UOze1MYe4BbhpI6mKjzwKIJR51Hb9aHtxhh1cl/vNH2IS81f
	 q+a3qF+G6zR9AR68V8eNZUtp9thJU5wTglNSf4KLVyXlBdN1v87QsMOR3WkPFEsIT6
	 aJkZhdOFil29A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56D11C4332F
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 01:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166959725434.12607.4296202294671439711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bb60040f433dc5302a8cadd6f1be936f877b5b5ed866e898bcf47a425eb67b1
Date: Mon, 28 Nov 2022 01:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669597254
