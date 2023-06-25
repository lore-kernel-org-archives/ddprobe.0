Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 714E17C
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 07:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1B52C433C8
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 07:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687678388;
	bh=pYZ79zs6Ym7PA6pSwVWvvqlcE0qHW4GWnYsVinaJh9k=;
	h=To:Subject:From:Date:From;
	b=FExqcFwQXdH0GzhaW2U/nub1IpHJykoUfDARe4e9FBGE2QladLobh9h8zx1W+Jt5O
	 xFOSZ2At1XFtM2rcyDCSDjAayTHm0Ujq7QHQjrA1OrSC2usZt+PgOSdgYEwfEw9Ew9
	 faPmEkIh30Wn6O5lnEvxPIUNrSq/PD2vIuO0YRIepT63H66OtwKSTzzsGSzZ78dDQ8
	 UKXWvwYETLLn6+qk87+zctVEokgEX7QqLnGj6U1+qfe+eZ1a3p4bYXv66lB/JxgXC4
	 6tycOB8GZprQFnogE5ZOtggNNboslspg3GRHARNAisWMqBj1pbpzK6t3fTHybPARFG
	 vZ07HKxN2bJjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1146EB64DC
	for <ddprobe@lists.linux.dev>; Sun, 25 Jun 2023 07:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168767838870.14228.18415312546253441064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49d6f13498d20db007143d4138d3e659d88a512ae809c1c42f25b957763750f1
Date: Sun, 25 Jun 2023 07:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687678388
