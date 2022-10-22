Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6DA4409
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 18:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72C7DC433C1
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 18:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666462253;
	bh=NGnPDk3lwXWCzdQ9F5JZ+iKbRgU+968UDdA2GnCROHE=;
	h=To:Subject:From:Date:From;
	b=f3BcbxkdEYuLD0QUiWvU3hDkomB8ocKh5eqn1jvR5DlznRktUdIpHAluNd84eek+1
	 AdDX3eddIYdWPh6dwPYWx/DlHxrzKqwnNQuJrXeCxGxrkTu30bc06L20MFpO8r6Wib
	 kwp0F6uYaEm5SZ9CBH44wGcVj1PI3ZqYDBuGdSA69Yx7/HyzaFnypRB3IzIuY7rmw0
	 Nx63y8q8+RWKmW4y7rirPSJDHdEdeCdqBD02tHCcJych+3GU1Log+zZOV4lAFG0Q+j
	 cNsSNvMd8nox8tL4VxpzbmNxsyIV+iLQRnF98u1VhxkuKmasQ2QKvS4s9uicHUttS9
	 FWcQSBCxs5Acg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54674C433FE
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 18:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166646225333.7293.15944059325758768370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dcfeec1fda3ef6bc0ef7bc170b87fc68263005f1d66cc72a0fd57c8d9cc1f14
Date: Sat, 22 Oct 2022 18:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666462253
