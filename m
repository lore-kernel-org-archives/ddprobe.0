Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E132E1D0794
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727882754; cv=none; b=WhzS+7FAT0zfF4hjDIKM6euwFJ6iIRzb+IkcU7pPqc88SMnczM/FE2zptOj7u8HT6AP0cm/JMXJkkUSvUTUsTUwDcgOIM4hwDHmcZLKKwedZbGylyLCGQe4hQwWVYhAoOLa4DsDxRw8vspr5W+VbViP6wMhJfWp0n/LUIYRIwC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727882754; c=relaxed/simple;
	bh=Oxj7EI6/iny1kG4JeUDva+oX/puKWSKEgzPFuG+bv2k=;
	h=To:Subject:From:Message-Id:Date; b=Ccc7wz0vVHixoVJn22UxA7tPPO8DTUoONyJVWmbTSLTZ5t5clFuNF5p2H8uzDo4z//Kl/1ivAGPAH8DLNmDoMW3qWyMo7aR1M6w2JRiZpUU/kMhjMs9q0sU1Q92mBtRp4IRzGXIdd3NyZ0qt2Bd2MDTWsVILN1XV1SoTcxWg4hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NzkB8dAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NzkB8dAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3D9C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727882753;
	bh=Oxj7EI6/iny1kG4JeUDva+oX/puKWSKEgzPFuG+bv2k=;
	h=To:Subject:From:Date:From;
	b=NzkB8dAajbjRiLQTGz9o8X1sHz1W+ClDiDfSMveCTzeVi8+ok2dg9UW+H4ZKvR0dV
	 ap2n3BpnnyLCNEXO277S5Gs8Ji9T4oucJ1mNR3pMevLwM5dWmJO6bEWd97J/uySMTc
	 ra+IOaga+EJTig6Ofsf+QPekeP+c9Ut5uA2fSeaFHfAsvPWmEI3oWA064g0C0HgT9V
	 1fObwB9jZ48sYsR+In1PFMJTYtdaYVewUgRxxNlAkHxNfSc/Weh/MYwBIC3MQ4yJ1A
	 xGBFTb9UrTa9V5VSfM3b5tNG+huhjzSjU+J4zJq5owguESRcsa8ly6ckMgC146QXFI
	 WxrxhyF3s78VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3B9CF6D3D
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172788275363.14731.2556182259867617530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51a81819a80e70052df01dddcf444cf3bf52e628917a238c86efe8576bf9c312
Date: Wed, 02 Oct 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727882753
