Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610C23D6CB4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787871034; cv=none; b=foD//6tcszkaHa0yVB+9WRgCdFs5/qVp5wIUC9t4gkKDEr/lUWM7iHijaWHuoJWgmd+sUWT/zdw54ifdGgE3MsyMAt8896PyU7WYK2M6EiUNBkz9rCx+3lJFN1MDUq2QF0qa7VnhaVS9z2Rulpz5xkWYrV2tK3XLdqgfUJ2J9xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787871034; c=relaxed/simple;
	bh=DbYI3ir1uBAmIClFKCQHfAWvGv47i0eJcIV9kCEKthI=;
	h=To:Subject:From:Message-Id:Date; b=n2MF3Kz7MdMV4+1d8j6LDrDR7jW5nvdWlwa9ALmsIJ2BMcwnwj2JSH5DrSxxPVIN8lrOl2BcVnv6TYYu6cICSETEve6eAi6zKGXqLvGoJ9nEOgD1LnXL0GuHo9ArQZFa/OvDQMlZ4ZMeiGz1bj+a6LlUd3U1kd0QmxqgUBTA74U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cc0cWMYO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cc0cWMYO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7BFC2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787871033;
	bh=DbYI3ir1uBAmIClFKCQHfAWvGv47i0eJcIV9kCEKthI=;
	h=To:Subject:From:Date:From;
	b=Cc0cWMYOkF+PtWiXdkqpFqctFSMZ9bCeP1Lr1VFRyohKCph2HsokXBFtaaNmSTDyp
	 mA6vi1WGPFYTMEcZeqZ3C0TFP1HSCrru5NrFR/pCiHZPl465Qq5wf5iT5J0vZV5HwI
	 PzoKDMo9fJ9n/el4Ip39GW3eDv1NhkF9JtWsUrk57VVWlL0KkYMBU2RPOMRxF73Wrg
	 ZwElsH3DRUCWuyEFYHbHME8Uxp6AQxN14Q/XiDSBc03hbsHip3CE4xvrJzqlCpDjz6
	 0crSjxKosx/7COGTIG1U2GNdW5j9THa0Mz81o+ox+q3AMqB+sfzbA3LXRU8OvqxDo3
	 hPrpgMKhg5eRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB305C61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178787103369.10393.8954642910294438942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75310b91f78f968e7285727eefb35ada9bdfd173b470714a2eea286544241c98
Date: Thu, 27 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787871033
