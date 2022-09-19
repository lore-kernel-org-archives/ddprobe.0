Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D16F67E9
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7919BC433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663548653;
	bh=WejPMq9KlgCksu+lbKN3QkJcvHaCFjVL6+QSk/sUPI4=;
	h=To:Subject:From:Date:From;
	b=qsgRUe8tFlK/3u8opxqfQ7lIn5fmOvyPJCKceqQqf+JZUQZYrgYU4yXSYxYDxuIpH
	 Oix9V771w6WO3aGj5YGj32XI7IZq5hWqzxnrQCyb9yf6U+Jy5QQH9w6/KQ0tkytdVA
	 H8PyhU9YYyttvpLemdhv5pkWArFY97pEy+0O9gR67ua9j1EfooaFoM8uVyZEnyaS6C
	 aUs9tgvDYaKxoy83npoUv5Mc2vKkQ4uGkwubncHm9ffLNA4mUTgUH1+Y4cdC3Wr2T9
	 1ndYmDGmDnI61xcItDnu/UjNBgsIJO0qlTHGAsET0iN6c90yW6iP3/5LCBVWjyfsUZ
	 AHCDdeMkAEaZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D1B1ECAAD8
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166354865335.13683.13686741924389337337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7939cadd05dd119378ce99119386c9b1fbd865206ee0ce9383cf3782aa57cae
Date: Mon, 19 Sep 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663548653
