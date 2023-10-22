Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1458F10791
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fA3w4gr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B013C433C7
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698006496;
	bh=fTBty6eXg5Imo8V8CAHzNh0ak5xH5nQuAEpCal545K4=;
	h=To:Subject:From:Date:From;
	b=fA3w4gr7zfALcn8kDszY7VphysmpPCl0bePN7A1B4SL5POXztWQYlIM/mcAbTTp8u
	 n3EJlc4qGuYMlD8uTmBHa4kUOs3ESaEabOTDf/KArN0LCGysre1jxvm5Fl6pgkODXT
	 Rg+9HN39bWa1xBehMF9QELcQNnYZdl/iZPVW1Na/iFNdWTAWTpbeZPxYS/TL+9EBds
	 ORgFKlcGIb0UQGKuM9q53fGLpEzoZ5P8zvg6z5UmeAFp5KbMsgzqcn68VTiPB73tGB
	 d+ZVTDCSPtCuh/el9aLVrd6BNkgATUeydrF6ko1HkyM2UkA3xj1+2a3UaygHpXNUop
	 PBc16Zie7e0yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68D5BC00A8F
	for <ddprobe@lists.linux.dev>; Sun, 22 Oct 2023 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169800649642.30573.17906507814387515041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca43678b7ff6b5c1f2ec3e88a77b55bd6c045303ff7346449d7e3a0e70eae92d
Date: Sun, 22 Oct 2023 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698006496
