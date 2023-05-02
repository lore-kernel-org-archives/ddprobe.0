Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4532363B
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 03:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA43CC433EF
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 03:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682999045;
	bh=G1ZssyaM7DwVVBg/Hl0IAxqAMLMMk2OtvUs6d6et5EA=;
	h=To:Subject:From:Date:From;
	b=oDZH/OewJDrKuK6C8Id4TzLcvTrzQuijViqQpGqBDhp1sEApA8ZI5+l1tLoloK5No
	 KtV8GscldnSSuvSSE1uuEUMQM6BwaWoX0diRPp7stF2aOzGvfZe/4o5JzI2DSn9iQm
	 5fbpQbc4yZtkNuyOJrwVXfsDyIFtlF6Q5W/kFELXMJSBgLN6ihilpIwQbOEuqHHUBg
	 Z4eBRYLrhkmt5i+E52WvgwQ+/cK8TaoOadrz2sWTRU7oSVcQyXp/s0Oq2zdHathSKg
	 sQbP9vevPUt7njCkJXj3xEi1yrWrKuIolGbx7sPPOM2ywt3cakogA6A9zlSjEfM373
	 XDYYSEBp/9s9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA35C77B7C
	for <ddprobe@lists.linux.dev>; Tue,  2 May 2023 03:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168299904575.9443.17284455395139792518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e467261a51edd15b5f6691b528dcf2f254c1bff7e5ab345ec91061a8289b86a
Date: Tue, 02 May 2023 03:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682999045
