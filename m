Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495F413DDBD
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746263994; cv=none; b=lpmMjxpH8q9R+YU1Zw1XDfYjK3xrvovqZy5MFwzf3VCUo+IV6trewl0PvmYllxs5dnzdHDuiTPi0/vcf+UMK98LHKxjp9vAVhIKAd6X4YVIHSBeHlqWIjCvGqX2y5lQIXSJKtShbVcg+ImglkGv/G6ezUIjRqpASNl4UkEXfHSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746263994; c=relaxed/simple;
	bh=fsD+mYs8DKkNRHMIsTjgcOCygwrrcJAn+A2pKWCrVIM=;
	h=To:Subject:From:Message-Id:Date; b=cTKVnUeM17OXIn7TKftLd8SafGKClitZCA8/V5iWWIzBmk+YyWvtQSWxtyvlFHj40M+HIWTVsgKzhaAXFM32kYWHMjl4Lwo6MOHO4iRi4/eNPsF30SvCr0L6vWJDT509yRKWIE2jUD35BiaE7VyDpsVMTOJECl1Lnnc5QLCh2S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TjftiKr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TjftiKr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A700AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746263993;
	bh=fsD+mYs8DKkNRHMIsTjgcOCygwrrcJAn+A2pKWCrVIM=;
	h=To:Subject:From:Date:From;
	b=TjftiKr6guln5H7oxZwpqR863s+lwJbTrAy+XISsKeYL2qnZFcR2+c4BOX75n66bf
	 PdREIzAeIIyO6RyaE964+lbPY/0AOfqskiIRb3UP5OwShP4Ymgj7zYz9bPzQcWGm25
	 2C5A4mY88k0pyR8FOqWsAVe7cfRAZ3K7lBYakRnvri6Id4R10gBcIlR9P/Wgq3KIS8
	 GLtJ16qpnnQA7GK0GKxFUlEVvW3sIKo4iVCkqk5hRM1TJFYfDH+2UdmJABnGEBx4zO
	 eIQfNXMo5FM+xOOkMY1E1rPBSIvKoXWxjasZ3nFadQRnIyyALdaS9qji/nmpFLovCW
	 kg60YteNPGQ/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941DCC369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174626399357.1186.6623205897625243426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 493a571bd008e6268622493b920dc30d93cfdf29429a50ea50cadeaa61f2c935
Date: Sat, 03 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746263993
