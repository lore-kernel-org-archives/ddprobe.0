Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07CC9364DF
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmR2dlan"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 880B8C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704800896;
	bh=uKY/U0GDekANDc5N0OY+EfGZMXvBiF1BYtn8d5yKMIU=;
	h=To:Subject:From:Date:From;
	b=qmR2dlana+hv7AO2k4XDgzi3R+msDOjszbovWNkSBAvGQ/00ztg3YhgAHs/+ioHuk
	 TLaRMnrh2FKrA1Nq07gbf1+JaexSWN1/q8UzQAEQWP8hJJCjE0G3B4X0rzlgIOWsEn
	 RFP/gSFcUOgWsCeqyk8iIRtQHz8sadvlkpjG0T+7aifEPFbLYG2GhT9A7FCW6zA+t7
	 skcMiBnsIfWQRCWpR0JdLLdqqrPdb2QXHKWn7d0BDkYMJsCxKhctpUBaJaaMb7h/bQ
	 ldEJ7YwBrw70VbU3iEaBZCtlGipFJtOxIgeYxI8xv8gbzyIwiHHomloKhsvUrE1QSM
	 HPxp94wqMj6yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C201C46CD2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170480089643.21717.17058369943310850548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5087a5149471de4bd8c8f47ed5e41ce4d1871650e826a257132b25f5344e7b4
Date: Tue, 09 Jan 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704800896
