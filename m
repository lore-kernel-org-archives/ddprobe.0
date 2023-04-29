Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4C33229
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 22:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C5C4C433EF
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 22:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682807166;
	bh=9VUxwwFBtqqYjE5E/G4at1q07+siYnO+v6q8pL8jUrQ=;
	h=To:Subject:From:Date:From;
	b=LBPzefFUBpcpxAdxHlS/wM7MieUhUwnuc9RMf0I3rj8bJtfkiEpiGAieus6jE0GdG
	 0MD4NDMUOOYioHYzG5B4J64vtA1vXJcX7Npg3SCJu4/6QROcxS9K3HfhEvV+wu6/Ym
	 C1zyBHyoVKK/TuAHjtfAflHQOf0pr4fR4sc80M57BSJvILs2iXhzmeVBQJwNtKHgVZ
	 aUaZb5N+fJPQClkBCYmm/MLJQ+hioW1cTfzpwAfleEpkPzx2cCu00e3PLDyuXtE/HB
	 WQbLntCIZ3tYpX0+dq6Ngs+aLJGgC7/U4Kjt+CE5lTrPzn5EkGm/jJsT7vJaxfaqjC
	 lAEZHpJuvg75w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB729C77B7C
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 22:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168280716587.3620.12559285045222710840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf904ed3832980e13496d0494d302b1655a4e1334720bb45d32914243a4c7151
Date: Sat, 29 Apr 2023 22:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682807165
