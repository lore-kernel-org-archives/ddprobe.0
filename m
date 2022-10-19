Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F6F7E
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 06:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72EA1C433C1
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666161653;
	bh=beL2T8m59Eh8m4tn/elpWtu32+fq/+8CSeCMIKs1lXQ=;
	h=To:Subject:From:Date:From;
	b=JVyJ1fO6K9hAyKtCLqQTr30V4NO+18oWvLqmaEFxAE+knhZF4iIdWT3r170j8p9aY
	 jEnBqvYKKihmlS3ZHx1ELelWyY153ZgGbnCMIgC4Z2pZhtT3IfkdlgvXyv4vRxihGC
	 w+HjveAhKOffHXRisoVoNm6NtcF0vTWGjQMVUW01p3s8OEu0EkG2yqFNpsJdIJagMw
	 LNjbKlVhAAuvsM5332ufGjEj89eHVGhDdwEmhdjpBzulKW4SWpQQ3y4qY7JODBCLrq
	 RHjBC+/ZGLOzqtcMFlfwcAWWtPmJ7XYj2xU85lLLFsV17WyZz9TyeKSpFOSnZNgcfd
	 3qXsUepuPHKOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57B1BC433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 06:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166616165334.14090.7812864564713620003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f4c0a73ae9391da5290dd91c597dcb74e7badcc09ffc6bdda0060038bfbe2f0
Date: Wed, 19 Oct 2022 06:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666161653
