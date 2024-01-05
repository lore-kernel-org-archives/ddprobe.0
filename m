Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96E6628E1A
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d77xNPL8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D545C433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704449896;
	bh=rw5h1XBSyanIe5rwX9T+erX4pxLmCBjzgorJylQMUKw=;
	h=To:Subject:From:Date:From;
	b=d77xNPL8I4Q9g/m+3YMTvB+SrGoFPl1R8HmfhsmGZFFVifq0Nyco/E0gg+SoEA23z
	 aNvP2XwrCoOaLHCM2IUa2Cdl67Sbtd7Av0+9opfOw3rqqCHZkJctLS89Q6xHitt1SP
	 a1s9/H7Gd/uaK+iWtkyudaom2BxYmOmWPcckxfj0J5SmEtfeTINQHDXsaaAEy1iDFq
	 PLgOEq0Nxz+ZAxtNxwnqWs8/cjpewVKxHvVlNW4agPnsLigQR9Z3liUuVzeRXDb8dV
	 gzUVhFqSAcKrxLddEU7iIRvFZDOImzWgVlTbq2Uh59xRHDd4yVaNQdJN0ERM+8MZ4V
	 dcTXZNWN0qSUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D4DCC3DA6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jan 2024 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170444989642.22498.14170015270295405287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f6379dd5f774e99c2d717b1e79e7b129231b1e77e48770b707c641c50f38e01
Date: Fri, 05 Jan 2024 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704449896
