Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E8A1E834E
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 05:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761800995; cv=none; b=rfgAcYyBy4hYXufc1ze7QOYzRs8v7sxoNTMMJ0Pa1TXHA0bMXSzBRrFXbaihXXFET/3eXAUc9Whgx8rpa2Y3cTXKnqtgtAUrFk29zJDsxWNMEF64tdOqVJN5aVv5aEbMo/1i5K3n2j88Dix+HXqAHsS7kLfEQzPJMCY4b6m8oGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761800995; c=relaxed/simple;
	bh=YNxojaedPGt5jFGNkuMJC9g0/3otpd143v5aeVIyDYM=;
	h=To:Subject:From:Message-Id:Date; b=LliRz3M8qul7HfjUlItsdtWyfs3+9WH1uEt3vRyMh3m+BpZ4/RvpfQqLlmH/fMUE/RgSjw0VqvUuBSnz50ZuH0YnbzW+Pi+XiG1H0Kccac2WrpK6AQys2bffdNl0KFr3NQn4m2AKHpT3KjJeJKilwMG/mQRVqV4QLmqK/zid2oY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFai4dP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFai4dP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB893C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761800994;
	bh=YNxojaedPGt5jFGNkuMJC9g0/3otpd143v5aeVIyDYM=;
	h=To:Subject:From:Date:From;
	b=TFai4dP0B3RISls0D/dxVh7UuhF4nfcpcAsPGGLOsLnfeEFglXyFN/vkV62e4Gx/d
	 tToriKCiocMeckNnluQ2+4id9uBnTzhVGTnk64cRk4iuRHI8r7vvcRAH5w1gCvMvf8
	 BjCuNsHX6nVsqd0PfSk3GN3s35kAc964qh9FozZKbTeaEV6xO7WB9zaHJ1XZKg+kUR
	 Hxyw8FU03ZzbGkQps0yuF2y/UfccXPZI123+sQLq61bqEQlAj4iOTpCLKsVZotSEkH
	 iPw9fUyoJbw/NmZQrZLixCfJqyeGu7P7a98JfWmuZP21J/KSWU7FWS66Cn/5uVMcVF
	 qSBxugwkL70Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E19CCF9E5
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176180099360.14240.11935529747800097367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2e9e095e140557d3271365787ec9a37d10424d3671aec348858be839d1901a4
Date: Thu, 30 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761800993
