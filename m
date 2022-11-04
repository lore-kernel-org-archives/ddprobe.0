Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7F1399
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D417C433C1
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667520654;
	bh=ukox4tW/IL+MYHNu0Cf7kttJk6IkVrfhAqtOYKhfzEc=;
	h=To:Subject:From:Date:From;
	b=AQAtfflRQcRMeYLst+Mt5u3rfBqmz9vUO2/gdJ+IFoIALlyaB+Vb/1jHhc39pBWEZ
	 Va3gbi+VvYttsqZQEMpDtJpUahWSza9Li3VEpVOhYCKa6F6Xx13bd45sXnQoEtWIj2
	 R6Ys7PIz+Q4H4t8X8G2CFC/y2qAZQYnYfzLSvE5dRc19j1ABz6vSdvE6b+9aS5+HAg
	 pddrZm6qUclU5pz3J+xrf7cIA3V70Bajbr+ScNktoatrB9cfq/2sc3Nm/zffyMLICi
	 /n7kLfQWmqbhbk9ckj2jCWosOyJHgWVoYdn1HR6UJa7T8Ah+mbGX6dVzs7RerI2sEW
	 3J5yXPd0jZaDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56542C433FE
	for <ddprobe@lists.linux.dev>; Fri,  4 Nov 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166752065434.7761.11842366999963295507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e63c7d03e5008ae90b2e83ae67561f45ace0873431069fdb12ab59ff3513c903
Date: Fri, 04 Nov 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667520654
