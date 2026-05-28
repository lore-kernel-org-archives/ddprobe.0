Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374373E3C4B
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 11:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779967954; cv=none; b=YtKDjz7B/jTx9FP5QeztfRDDV8C36Hwryodqh9sux/iVxkBmbuSsv0a+EcM9ub5+tBO17P3yM0VYYZlgg7tfGqY3DahSL5+VQQAJ5yJnWvdsKeDHcQTmSJ9ZFdMfFFsGxDDULnPzYjCKa+9AiO/k6Q0FsmNAk/4kXPdchUhcJbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779967954; c=relaxed/simple;
	bh=kHWPoqXWIwV/Mn4cG5YWOJG/LISKoBPBz1JbAAeXrEw=;
	h=To:Subject:From:Message-Id:Date; b=mdHynmFysWO5vjj5KhSiHf0eATfh2JR4XVmn/Qy4ytSQUtjD6kG5JWyZIpgrJ+P19kKk4kfGAJf0+5vF5hLGhrGHuMG0W94kx+mSG8FkTzT2AFqhCwIWyEFMM2RXmMRZ6tMvxrfcDA1AN3i76pOO2H8+jvLE51tC14xeYLFTiiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljIVB9Jk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljIVB9Jk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4ED4C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 11:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779967953;
	bh=kHWPoqXWIwV/Mn4cG5YWOJG/LISKoBPBz1JbAAeXrEw=;
	h=To:Subject:From:Date:From;
	b=ljIVB9JkB0w3X6uMSr665VBHcX96Z3XYql7Coy78vRt+Y29vjjbgG+3XS8qmwHWQ4
	 48tvb2wkgaO4rtcWGoopfRMrmYUlleG3dZ9QLD7TArZE9ZFLmqSjAD2o2MEKdG1+pZ
	 rRAZt98TC71YCj2L8ELtgFLovmdmvFVRw9DExN28+AdBUWyZhkMGGpx/Lm4PWOTp9v
	 wEiq/FpfOzVgCh9fILx7SUqxINlrUBiAbgSXXCCrK4s0uyhfynTSy0vAJaUjHmgCkT
	 FztG/fGzn7Mv2PWxnIOsefao4lGi+0duIRsBRnOQPBIIDlwWupy8fLnCDTc3K/ImH8
	 7CWyMg6KQ6Pdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8ECCD6E44
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 11:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177996795368.5650.12122429265069509897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a3fe63cc062341260124a88407a692d4074e562fcc32e40822f7aeeeb830242
Date: Thu, 28 May 2026 11:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779967953
