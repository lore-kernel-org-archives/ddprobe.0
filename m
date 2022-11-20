Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E6F7EC
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 11:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7108BC433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 11:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668944454;
	bh=BXxwNp3ezmplgU9QqJufQcXKEjvuVVjFRm1CK7/YQ1Q=;
	h=To:Subject:From:Date:From;
	b=VPEfGp/BdYKA9G6KVGXHja1aglfMgkADpPLlgAkiysWlGblQH7ubOAEfhc/I464v4
	 hP7FEHIsruJ15vExdglEN+SC+xIQ8tzvfGBmU5IJBZh/kICF8/rE89wzzo+ETdg+LE
	 gZ3KOhaWKOX56mvSxmvvWKpznyrL8hCcpZg0pZWjX07vAU69KeWFPymY3vVA300U/J
	 BTG2dY1nO2KpDzp5irTNS1BbtsbTalXeFjTN/LpruAHtJRPtGuRsgr7N2miYqCjW6+
	 OPAZH43LOPGg+MZv8TCFf1TLAxjjl+CZ+ZzROb6eikupzWij/txbtG/TD1FaAfwlll
	 X3DhRIK9LmRRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58570C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 11:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166894445434.29583.3974238369963431735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0db33d6c4c71e63fe55c5de4758b6a3ff229cf9aee73cb2aa9b6953b45343821
Date: Sun, 20 Nov 2022 11:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668944454
