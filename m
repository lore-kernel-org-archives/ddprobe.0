Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478DDA93A
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 16:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E633FC433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 16:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679587745;
	bh=RUV3DY4DHfLX3qlqDvkOEd+XhEvPuKwRrQ2pC6xjst4=;
	h=To:Subject:From:Date:From;
	b=iZ8C+d1l+sV00R5yEkY/l1CWKSr6sz2BuUHULuq0o2wsQ0TUpISQWa60BDA20eUTQ
	 XVF3TL7Lhe6fFyGtGESMbAqXBvLovLlFBoJ+4B6oILglyzCBUDaLNigVQCkxHa7Nbq
	 thb2JZ1Bvnh+qKyGYy2i7ub7k5CfS5EW1o0nYT/qOaeliFNe7MJpxyOqK0RnNDU3IQ
	 BrkkLdY/K8qiNJUnlB7meGDbnRwGiGCaSjz4f0P5M5tJyLdv3k9AL2AOUB83FYXpsk
	 xz/KnzPlxZzSrdBM16bQFZTIbFGOGbrw7uWGTVSNREj5Jeg/0x1NsZU+Osx3g/f1te
	 2z1LP/yku3HsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C245CC74A5B
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 16:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167958774578.25896.5495903791280781368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c48e031b0aee82677005cb5a15e5f639d4dc7e42f01cd1ad8edf5a8509d1d216
Date: Thu, 23 Mar 2023 16:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679587745
