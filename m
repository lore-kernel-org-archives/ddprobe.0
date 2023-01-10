Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEFE77481
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91590C433F0
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673363487;
	bh=FChrUfLb+Fv2pys4qy19jG4qlxguEqgh6bxYKkEKlFI=;
	h=To:Subject:From:Date:From;
	b=Aok5kX4ivgMHsmRmOE2kixaPWQqUdqOr4RMHm8910J6lwhKGp+484awyqOJx71PU0
	 RjJxO+Po0YbCI+0ZD98c8N4e18lHRkdyCqQuhI6WeJSyBJIDac5BQkgM3HgubFesYE
	 v+74+d7JRWp+6xtu+ElpKi1pZjldC/ltcfMMi/knAMhxdR/gW1ia5/7fOz45RJFY8Y
	 MSWmq/N78dHzvdD1srC5mrpPzLqpJ0+Kzy5OtwA+YWWpcUKTJYlALlh+yiTh42hSUM
	 DRBJ/JgcuC7eudb+FtMLlBoNZ9YSJWbU4Rr1xtM/Tahebw2GdUv6ccW6GAnto3OrKb
	 /N/eZsrgFUGDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70F8CC54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167336348745.1714.2411678696699952288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb2fcf9efea661917063f5c8d013a88acd510af18cfacf28bacb813ac41710db
Date: Tue, 10 Jan 2023 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673363487
