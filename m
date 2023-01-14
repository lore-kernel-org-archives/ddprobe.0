Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D68C17C
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BD7FC433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673679087;
	bh=zzrrS2HLS/Cl3+7nauvmn8GCQW3R+j8BfPgNFSqu2Zg=;
	h=To:Subject:From:Date:From;
	b=eNsESydADAD6GuTsBRc3rl/rHV37qRzDXMha/PN/WKvczNvUnZE/2tQRww7Lyf2KA
	 IM7u0jy5irb9FjZt4uOC19G7kun06YtfA8stjr8K8nRdv3b6UF2O+ObyVW4NQk/U2+
	 O4egzArJ+2VsEx17i/z96ZBEok+u88ZoC0Kx4Oqq6IqCZ+7RQkPpB01WFhl1fh37a1
	 hog2RMH7elTttJh02AS1axSIT10aFUZbvN7iafs/lKmsxfF1yRubQcikSM0BveqV/B
	 wzm7cs+sGAkrDKoQ9+CrmJ8MedOlx0kpywKL+DpcjbFt/H12MWJMUd3H584Cy1CQX/
	 GR7BYSDHfh4hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE45C46467
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167367908738.27099.1461794216766662426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afb4933d0254e80de8080505478fc13fea30ee7a933a1d6c17181b29572e8046
Date: Sat, 14 Jan 2023 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673679087
