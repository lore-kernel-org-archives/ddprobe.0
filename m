Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560F8C2F1
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 13:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6261C433C8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 13:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688044988;
	bh=azWMa8nq/77STYZsgcmWYa/Z+PuI2LL+5XrVDvDxs1Q=;
	h=To:Subject:From:Date:From;
	b=rh01XaznMUk4UjRM4W6msObjA+ir5prdrGtW47JOltHg5oHdHCwVPbqk58cKPS7/a
	 OkK6HVAzbqv21WTZF+vQ8Pa63hxMukkyotDPyCLf8dK4QPgSj1NLbH39aZ3Zj8enbi
	 CkgluO6dpm/y1Thd4n10OMUBhnGBK+ZSrG0RfVPS7TcYUGeyxVUo5gdx5OMrDSW551
	 yWNgS/uyVZdt4jmR8OfOsGKty3O8GlGZpHrbRkkJ678PAvaViFWpwCpgNkpIVg5s6F
	 nNKQmmPfJRaFOOD7Yv6fGPQ8xqkk8B7UxqDcqTM5qoT6wyA+vpEaosQEOLYRtoLndL
	 FhYI72OoNgOog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A383AEB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 13:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168804498866.4032.1648337710006100873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f713fcce5b12b34db58a914eb7b5da35b7ab6773c60a01e9648864b4f62829
Date: Thu, 29 Jun 2023 13:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688044988
