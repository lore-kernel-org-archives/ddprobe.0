Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7386B390
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 03:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGuLFXN9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70D4C433C8
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 03:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696910228;
	bh=FJa1y/EaFSxORrw5bL5ITkOhfAS2AXWxyVi+5Cgi4GQ=;
	h=To:Subject:From:Date:From;
	b=BGuLFXN9/+CbOsUoXia4ZopGiIO6bwQtLQxAP9dF+3dVbUcCI3v3kdpNKPll2iB0h
	 7c/mMLKsaM8l824kzknhuMiXkb8wXo76fWey9eMzZpWeTkkm9gh3fL9VTm5kPqVjem
	 50oxoclRMXh4/fTz/UVBlQJT9OtzMNp2R0zA4677gAU/FN8I8PSPS7O/Uq5d5n+1Sk
	 ZANRWCbo3PZfdxSPzX0nPajaYPX4XCR5wtKq6zJiOWDObyJadDqmNIvq5U3Ne5xCuP
	 vaYgLQvEqITkgSizzdmDQMYmAnmUfFf+bNoArQJY9kv3KoUM0zH59Nj2xy8Cc+14Nj
	 uNwsicw0nMzKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B72AFCD68E4
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 03:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169691022874.15268.11520222859232707771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 058eb82cd103b7751d91d843d1ff5a7ffbea8329c472ba19adf0a1488eb052e7
Date: Tue, 10 Oct 2023 03:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696910228
