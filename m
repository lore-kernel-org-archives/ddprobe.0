Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAB832F2A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92A16C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673626287;
	bh=el++Hf67YDyzMywuCE+BFZByhtLNsBVtcnv1jKtWI60=;
	h=To:Subject:From:Date:From;
	b=eA2X+DOI3u7ZCc/jZ81dUkQIRC8dqB+eNUx6z9i++NUXzYiNDp3B7QT6vbsvPiIWT
	 F0hLmrbgxoR8/fslHkglonooEHFdVm1WkGaZ+wwn1KJKCtCp8PGYSU3SIyfr+18PwJ
	 xNEasCSnyoQxjlJI8YOdfF+/coKThbNqTufb2XiWyVneoKe7T/4R6e0xv8vWFOjkgR
	 gPCJP4Xcgy3V8pq3AEmq1CEsydYwfL8gLMHGJzpjgJJS9jAF5F8uKf1S9BYxpnLir/
	 JluUYiu/nhNkujBkWzIhjDJUwB0KgTamxYSWctYEif1rvM/8Cgn+2WS7VpiF88rhze
	 RqAHFkwGBr1nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 789BEC54EBE
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167362628748.32142.13039865601697512433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 120b2b6334d891a2001f8fca554f51226269ac8db7e1066094a7c8a3e86b5cac
Date: Fri, 13 Jan 2023 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673626287
