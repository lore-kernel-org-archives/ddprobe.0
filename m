Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DADC5ED8
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AA3EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670698287;
	bh=eiSKCA/q8B9xxYvTL+L5Wanr+D9ye9rvy6ewOrOxWQE=;
	h=To:Subject:From:Date:From;
	b=RMHmIF3fg5+NK5m1GCh6RwfhzYvpLt1UioKyZB8JIt9VL7rDoLEtKOC+juXXEdYQX
	 UZwiitasAPdMtyYuqUgGpNk/NwT8gwOTOBxBt/XzTUWr+t6FYvYbcG0DinX7c3baP9
	 zhKOqZUih1x/4BevCAH6px7MQ2npPNzmg1jzQX4v6c6s8hm7BZ72n6pDWHIPUXEYx2
	 xwlP2FZwm+fZxe6+YsMm8wfphalc7QQV6KqrBLAoIj9p4tIqzvXS8RFiVgnKq7Z+rX
	 fjIgbihbx1suitmycJHRwSOQjCpOoY7o1HVV7d7JnbROZ7lSv+A3VHhj7cuWixG+tZ
	 61Uadxxxyh5mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F8A3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167069828744.13053.17754276683455005085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c29d76c1295da024bd8ac957a20493937a26cea918858e6f8cbc85e917558922
Date: Sat, 10 Dec 2022 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670698287
