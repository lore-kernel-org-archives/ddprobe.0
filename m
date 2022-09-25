Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE13229A8
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E518C433D6
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664106053;
	bh=/BQXGINfJjWVcMhLycogY7z7KrgaZ5Jylp4tMiryt/Y=;
	h=To:Subject:From:Date:From;
	b=eIBJf9e+DxqYMtoo0hJdHI8Smb2sWRR9grennesKbR0mydwY/yjmUzGBtUMT7+F/2
	 vs9wl3AMJsXXXXCW5xniQFtwOXTaUQkuK6Pl8JFNQxij2hajp/b49wYIdKyzmeWWvL
	 +WQmZBcV5yCEqlkk8JDxOlRgbao6PQV0rhJPKF97O7yBS3mcWs5sWqYC8jTOLkxrd9
	 qJXm/2klgpmOxf8fS7AE+G8iDToh5Nq83QeQUgTYdv3iB2SNScEQO3UFZZqAwBCR8b
	 +pHdYv7i8XqDXg3eRRWBpbY31dBrJf5BA3ULtBXIsLpaxqSIpTrc8gvsgDjg4Z+YU5
	 6vdzhF6YZzL8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5539BC6FA82
	for <ddprobe@lists.linux.dev>; Sun, 25 Sep 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166410605334.16301.2846229212280314604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf3d892e5f84f0095ac2cfcedde523b37bb43447424caa67658ae03b591fed28
Date: Sun, 25 Sep 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664106053
