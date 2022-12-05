Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D265D15CAE
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B22DC433C1
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670284254;
	bh=lu2ngV/2w/WG6q81WwjcB3CZf3rP8zhw0FWluu9pqZc=;
	h=To:Subject:From:Date:From;
	b=UmCC2U/6iCJNE1ubPedVQJPvltYGOdDl/FJps+dCBRur0XpwhES6hF++7w8/vIulb
	 Uc2aK8RJDJOq8unhb3VW8qZ4kXM4Kl1wk03lZ86zq7GpiKG45eg6F1lcaoKx5C6azy
	 YWibnSE4v119fkHBSbhbBW4pqEEq9ikiRXHNcJzKVWMkpF50hSFHmAli+GR8XDeOcT
	 Nyo+PeXvG8WpKXYHDKDeJ8woe90n6/TEyh9ncyyxXvHb2gPpRerQLtXTB+Hw6qiehS
	 OmnYmsueb4qexFpijnIopQlpSjjOfbZ/aQUeZZw3aOFaa71a3dXxi14LTnSg8dlAhv
	 kZiTBc83WWQZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A57C4708C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167028425432.10488.220916837410557864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d8f7fa468069755c79fd35c439dd10a0b9d8652fe9f801a8cf13e69bef852da
Date: Mon, 05 Dec 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670284254
