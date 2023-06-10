Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86B441847
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 02:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 09774C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 02:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686365886;
	bh=Ns9uqZ18HrJleQDh9F/Khz5GMtNV5BUgp4gr7sktQIg=;
	h=To:Subject:From:Date:From;
	b=h8JpW3F3fRRuMLduofB7hg/Ngy82X5Q0FDC+TUwlxI4SLRUIe1VylDMBL7lEVqA1z
	 HwWnDYFOAzrajzIEuzuu6eXXKHKr97NHptTQ13TS4ZtU6UjKCHDkDXP1Z2zfJLM0LQ
	 ctakOYyXIxseeMpOvsyZRz37x3JBpmh5dcHOHeJ/kwxi8FbWXpKjlBt8B+4MDylsYP
	 okVae0P6qVImDZ7QxChf0DyhM376+NwoHWYGTMuuYPh5w/2JNoMpugejrXZ0yx//OZ
	 JDb96SFjHZQSPRZ+wbleOQOUfTqmsCS4jBHWmHxy1Ekym/TMZ/UIXm4uKcNgtK5LR6
	 0mI5BRy0VfEQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCEFAC7EE29
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 02:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168636588586.29290.15334895717205736724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a374bef6e314c9db3986dd7e99573b30eeba16062fc1946b110ca917b80ef483
Date: Sat, 10 Jun 2023 02:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686365885
