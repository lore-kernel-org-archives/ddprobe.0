Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE492588
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71348C433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668967254;
	bh=hoU5ZyqPQsdB+UjfTS+FFPAXr/fvEL3qauOA+Gwrr5U=;
	h=To:Subject:From:Date:From;
	b=ZPORh9dT76RGEmIPZtICzXfJ1soODRR/5r8tufvWIOVLYU5+nSjIwjVEN75UIczr1
	 TsoSZm2jG0wcdBWzxtpakjuNcL406cJdtysDhZ9oMS6tD0JI6T3JarviDKtehOkM9P
	 BJExZXDSf1hrRtmAn0srtsPMQMBkDmfIdS20SoaJUDGOOJDYOWwyGU1fTSyuGlZ0Xk
	 d+YV+2VwnwvGarwaG47daNRxPHQ2RoGZ4jeqk9+QVWLBw9SPktUUREUEniJGCy7GUl
	 ceMxa1rPCsAEkrWpBhTYtHMG6CxKll2W1u7/rhSSHx/9SARliH8JQk+oZ4eI7urVgb
	 +QVfJncUesjqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 572DEC4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166896725434.18834.9772494506979677429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 802ebed012e7e3b2087bed072a2c6161bedaa5d2cfa7b18ca7466c696c2eacae
Date: Sun, 20 Nov 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668967254
