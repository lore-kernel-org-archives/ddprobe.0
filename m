Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC0C2F23
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 19:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9193CC433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 19:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671304287;
	bh=VHaW5OTWQqqM5iolasKJ4wUXHIvsfvmrBIOOR2qA7YA=;
	h=To:Subject:From:Date:From;
	b=s9LykwrXnMasfdkBGZ6ahX9/V5lpIuAxrj7CCJGB0udAY8HAniGqryaZi0gULncI9
	 bzfC4vlqiMBeQDyb6CWXylPEohFvtcbotjeos01G9Z3a9Rf0sIu6Ao9UqjTHxsgfq+
	 xWu9QQo67FvVoR0IiV67/ekBtreSCtzFP+VOAk/I6EX/LzN0+dkuihl/94Uu1PKQ4h
	 xFyMzZWTl0/fNAB41f7yyaNw6zsaOJRb/eeOH39l2WePvGpN0Xu2JVS+QoOblGQDEp
	 4L616ZPLxNfklZlzPlWgFy2ImC9LWmMe4ZQNghAoHOxgCITHaJ+ELelV9SIWYmhYud
	 lR4S/e2FkwC2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 733BDC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 19:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167130428745.11934.11674581566688719762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 244d0e0f3f5587be78fa69b2315e14d133a7cd1c63bc090885ce8e0e5fa5cd5a
Date: Sat, 17 Dec 2022 19:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671304287
