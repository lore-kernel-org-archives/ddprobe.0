Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFB7481D
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 07:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C7C9C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 07:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669792854;
	bh=3QWN7CT+U5tNQ5m0F+CXZE5uE1HQZRLvrsyhKSYjeEA=;
	h=To:Subject:From:Date:From;
	b=TPRjQkn+R/kq/HoDT5iBjk7F/ZrhT3ShwqqEkF7hxxqkoibH4ism6xTk5MOKCxu8e
	 fpMShD7lK2UrvomG5fx62+B6NghH6+1Ajfpx5bUXDVz5yc0PS2jzf5wPmBScuByb9T
	 2Q4Tq51umRk2tQUz5INc/WMaKaRuqxFHnSUDqcjH+Ajtvd03cS3GtdS8O3C51WOFlB
	 Snc1TpVWkxc6qQh2zFCwFFWGlowlvBzQszMNzM/XPk4V5MB1BauRIXcFdjU7YlsFjz
	 CULv/dZP+/Spm8P7m2+dNlKANAusvNEyMc1aBo9vtzCX1NsYEUh+P+Qq1r1Sw5l92V
	 K3AhkCXQ5s2vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F9E9C433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 07:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166979285431.26683.7332358669502014221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 711ea3d739eec8daa1224b2eb59bc1266ed479aeb7b8c0e6d18898e06adb9635
Date: Wed, 30 Nov 2022 07:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669792854
