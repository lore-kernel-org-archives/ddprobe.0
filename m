Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4679C256E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 23:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E11FCC433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 23:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674256325;
	bh=UdguciaFGEEnMvFt6rtMI2CAQQwZeYwYfSQ9hPZPGSI=;
	h=To:Subject:From:Date:From;
	b=SGdvx74AgRH/3/UGa+L69WZecdI1tGaQfpDBLkXGqP0q19WrXleXqEa/JowSn4nyl
	 dOEt2JKGBcMs7qlgiQphUtFalndcazV+TDzoltUkHSwOibEmQNpKDFhIXewX6YR91Z
	 +wSTqZGQxVnL2gLLhOmTgFI7dY6vyfNHPeStkMckkgnVl+fpqFctiR+68KNKNUhChi
	 TaC7vFRJwucFMN5qUfSlrSACLyyJ46mVSR4pviB313BP18ie8F2jgYuOYZ5dGhoMz+
	 x11Wzfy0je7Dn87SoLDN6WqbztQa5C9zMCSSxkw8La1HoZQUeGHv3Fx6oW0qpBCUdX
	 3cMDxU7XTM4Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BD2C05027
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 23:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167425632578.8955.13574251900994107606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90e9f708af6a85b6b7f8e696097e5b5b97232051037bf2575c5ded60ae7a70cd
Date: Fri, 20 Jan 2023 23:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674256325
