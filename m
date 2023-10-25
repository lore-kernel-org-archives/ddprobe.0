Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319B311732
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzx1Ckr8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83499C433C7
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698213496;
	bh=9c6zSjl7QE4KVEbCQCkwZ9Ycpy9ml/Q/VV7XuMbboiI=;
	h=To:Subject:From:Date:From;
	b=rzx1Ckr8k9QvjtLEPEZzvN9uxKezMYLtm+5AgmCQ2E8LjzyZTGrF2vTSePufabklp
	 WB8Qu36VzBp+hmdDw+YCoY5E9Uh5DXeQMQB/CsaRJKlbMvNDIkLte9bS1c41aODhDE
	 NXK8oK74SqFb1xbw6q7oELvaoO686L7F9ltP/HiCun9GgGZmo9DkelAuqCSRR9bRKk
	 MKFv3xGvsZkQN1Hnn3MXMe3oQrmNQnBgg6Z5L1ChTnEqJd71Z3GnB5oqZAyroBYG4C
	 mbVRqUoCDElDH8A4rQwfea7owAvr63g+b3sfZDMGu+ywro/2ML78J8RP3+tN3NZvap
	 fxaplSrhR7mSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 667A0C25B47
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169821349641.7853.14807605902000890254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef521fa227cc4a0924ccaf950c7c92055d58fcc6f54f779c32aa7006197be688
Date: Wed, 25 Oct 2023 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698213496
