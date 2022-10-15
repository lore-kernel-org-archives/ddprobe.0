Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C242536A
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E140C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665841253;
	bh=hKvchvvORx12g+ixpyohYfXxHNEhzC/r8MvTkO6bZxA=;
	h=To:Subject:From:Date:From;
	b=qAoKhMv/imehnv1iTEYf3+hUoRsiZqXXIlbyCdQ6B3Zb6lOtQfPE7eyKG/DRIdeIc
	 j07w/PpWWKiS8mEwet/1ZE5oBWantjrv4OBGw4iwfHuXf+9zxvTQhAIMkTuGnVXTHU
	 eUeQItUO7WHZP41JkSfQB9l2BSthpPw9gXy6oK3arYJp9xX0/mnej6Ssv9vT0ddiPj
	 fiQXxHgguUL0tElRHaNecYslkbWB9/W12WYAYbc7IRjRFK9ZBGlnv7r2VY1qBP2G+Y
	 0YM5q1mdV/revV0mK6izzNPJGqHdP2vn0KC844KE5QujbrcFIRjHCEcjvCEjHbgJLg
	 Pv7Kbvr976sEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55584C433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166584125334.12014.17855527023709002814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2d44a4e6dd728e40638f117ac57003632354f58d604393bf98a2fcf0f1dfd82
Date: Sat, 15 Oct 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665841253
