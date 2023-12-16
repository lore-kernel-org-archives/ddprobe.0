Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0999E3527D
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHO4DDRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AF8BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702763896;
	bh=oCNbzqgb9TOGDziBxa8CZbJ3bcDp9e7lsEi7WyAfu1s=;
	h=To:Subject:From:Date:From;
	b=cHO4DDRb7DpcEHcECTMw3cYa++rpycywXzDp6iVqlJ9QIWoful7mKdVY2XKg/2Sgm
	 chOsl8NP8DhgR9tl2WpbReWMpz5/KAkSOvE2NOBDH4ZF2Gl64H52JxM+7DiQYQa3HG
	 33zKPlDSSHsLuGCOA2Pc7ZlxN8PHt3WHDR+DEQyDMuGVSBWmWeldyXkO8zmAMdaScA
	 /q2LGze3gnlptGml23+Ueqa3Tj0AGZGc8OH9aEUrVJRdRPsQcZQ4a2jTJxVwGg1eVL
	 4k5HoPlx+EdFiWB/H1fCxjCgQsyP9NiLN/KJtNkvU7w+66gZwA9t6SecNeJ7CJGbny
	 vL7JQFVeOXSuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E714C41535
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170276389636.16420.9641061984764220021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d1a30df9b5e51edc588cc1ab96098e6f02eea6f0b1a4958b0b3bfce9863dd8
Date: Sat, 16 Dec 2023 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702763896
