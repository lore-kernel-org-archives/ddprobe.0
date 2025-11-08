Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067C034D3BC
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762607994; cv=none; b=XMWJdkit3VSIuXVwCRCChrWJs7Vz28BK8EFxpg6FVQKrCCy2+7ntbkWToEGvF5N3hRMFJ/q7Tut+tfSKtQmioMW0+QjxWOw052s6rszqOeU6mBojhtgq3pz9UI7JrcVwW7QAjfg8NguNaqoSaT5Hvx+ZSBDhjKshAiRZE2t/xpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762607994; c=relaxed/simple;
	bh=csBKPsoreV9zSJS1Nfrz6MnWqr75qIA/1Ks0L4KM0lQ=;
	h=To:Subject:From:Message-Id:Date; b=Ae27ndJ2imqcYyt/5SLfNmw1+w2qfwznKnNXLdGLX7epvFsAbCGK9PP1M9/YZwCkHIdwtly4AnLIhgbXXIBg9TrWuEmS1RksjGipuFCOu9ae4JrRC/riYDahguY/LE9YgMijR+JtbQGm2aBpkx9e7y5byrwUWmXGo4/8wg9V5qU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCYDwagB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCYDwagB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BDFCC4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762607993;
	bh=csBKPsoreV9zSJS1Nfrz6MnWqr75qIA/1Ks0L4KM0lQ=;
	h=To:Subject:From:Date:From;
	b=kCYDwagBTjV+kJkyf/LOuXHGwuY/h/b+vTuIz+QV4qBfgMPYazutOYxTeXur1hOUh
	 Hp1t4CHUWXD1MF6XV/CLDLgEpbJmZvaPvzNVR3zgpruMO6ZZ5dGCr3eSuWXu8MM+/I
	 Q7k2CYQqOW8xEemHeOL7NRzpUUF49FyVcK/K1kfMOy1Kex6ViGbFB6Q6wYC3UrOazn
	 O94i4rDDiMy+gAKs9+GXom35q4xgipkob07UY23Obreul0tvLrBklW3wYbsAu9vb73
	 uYGewYCmUfAPoxQCVh2ALwYk5gAqFEo7B9N0jyqDkImik3xPzs/9/wsUuZhoa3iL3N
	 a+HJtcyzx1KTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F543CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176260799357.10199.1156171361783911363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb6753363bc58c8292153ba99a15aae869b8eec91e6002628e87aefc2fd224cf
Date: Sat, 08 Nov 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762607993
