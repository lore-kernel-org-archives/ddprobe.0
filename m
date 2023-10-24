Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144F9749F
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfrbS2vx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 828C8C433C8
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698147496;
	bh=Pf0Me0AWb+3T+TrrHCIe0QLO3TdFjXpFiF0rX0UlDPs=;
	h=To:Subject:From:Date:From;
	b=gfrbS2vx4G9OkvHH6xv8Gb7f8Np9aRa84+SJnLwe7zUReOQMRmjKVOxMQs+7hOt0A
	 gH3SgXIhRWsm/J1eCNC286G8SyQWZDepSCXpr+zlSEB+kwAd+0AUb6q/Cbfk+SWsxQ
	 Dpyt4ozMviNx169piiJOpc7TsXUryqHpPmbsCFqwa1WvvPuyTkZ6unoCS8rpm2d753
	 dBUfJQ0K5xwPohC6vJGwhHqYA2mvh1QX/caswsh8l53KA97jM6ad+pD+yCK+t6s3O/
	 n3ZSA8AE3yRaNeCkYgL1idGRCp+o1NOi7CBrdOklmlGwb2eVkKelz8AB3HYi7cNpgp
	 wntueUqMsIWVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64267C00A8F
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169814749639.15534.10144471009335194947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ed37d137662733e843e2b317fe2f21307384c08e4f1f1828570207f09521378
Date: Tue, 24 Oct 2023 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698147496
