Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7236E4A3D
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 02:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719196343; cv=none; b=k0R095n5TgHg1DgpbwYhJI8a8WTGGAt77LnoCP2mGkN0sPJnletsJ6lOnGuCx5K9VaxZ4JfdOqeEetnA2bjwS+QBYL4QqTIL+a4rARDMhk8ezHF0qLJI/AQfDU8AmzjmZo4A3H7WnLggVHZwDIiqgkZkO8hVvEYw9UK4UVhx+n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719196343; c=relaxed/simple;
	bh=0dIQK8jZC8JTU7dUj75fpWdfZ1P5DsUIo7WMzCZuEQY=;
	h=To:Subject:From:Message-Id:Date; b=aPlqsyYKIGtg0vL7ipc6klb2i6QZ0fn5gUpwmRz7arQ4pPDx24DIzrxTN5FdM9P9UmeeCdx+Qmn/TNZ6i+V7rsnJ7mXxBSWa40QpSJXdC/hFxCnWZnh50NEbJTFIVrHEsS3rpjrHkQ+Ev44zTv1djXua8srzt33xfrf2GE+MMsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2l0R2vF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2l0R2vF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC5C2C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 02:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719196343;
	bh=0dIQK8jZC8JTU7dUj75fpWdfZ1P5DsUIo7WMzCZuEQY=;
	h=To:Subject:From:Date:From;
	b=k2l0R2vFV8Nyysxwst7IwnUojJ9i7M1CZ75NcCX5RML+0p6OXG2jBtezs4qZuMcCC
	 oI11CAiSuEmxALfSkq1WIXwojDpVYGPFP9+7NwhZLJagLJ1Ws6u4s9jRvpCiGGbE7C
	 G4PdGJzNEcESo4iV7jI5f27Q+aFBuAcpNmErladTPHNjdPsP73dWeNxe+DaJw9VFfn
	 Ko7DlZVoTGADTb6W//s0xYxTX4RJSQ2M6MMtoxWAV2XP+dopPnASVmF98HUQphRtCU
	 pU1H360Dza9gT2j6HahlrVTGwDh7BwK9pm/ElW3YmwKD/c49SACx63TXyq2ZTlmc21
	 r7ggShIpmAA9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6EC7C2BBCA
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 02:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171919634280.21107.1174589671999214199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 555c4956e33456f512cbe2a4352976a069e26202f6f518948cf0c670bafade24
Date: Mon, 24 Jun 2024 02:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719196342
