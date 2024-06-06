Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6754519884D
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 15:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717688843; cv=none; b=r6WreeJr1+XnovqIreCOltTMfQLNGKL/N9WqpOII8vlVk6LoTKww4FchUmKn8uy4Pn3c1Se3NeOFkEMMVy2cGgqSyfpTdoXzl/r51FhIG1tP8TlPsG981JSrXmOUNaE34x+nGdwdFd55T2S1g5cDi+GWa1zFLX8TGDuDGrukBDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717688843; c=relaxed/simple;
	bh=3xO7VaInh+fQotfOa6nN2VWv4Fm6oAb1TPT4hY/1gTU=;
	h=To:Subject:From:Message-Id:Date; b=PimEN7IWKDe2WERnEr0IMD7My5BWg8YtDZZMdt2x7WHMjxk/Iqeax7ZjV3kFH9C9DXUhJLAR8HNAEXKfpKslFqgSvACsuuHWkHCijv4227MIhQzX8rLANxbPlge+/GZfvkEDf6k4iGFUvYbc2QrxzFhwBD6VfUcxOVT/wAAAjc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TDd1exel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TDd1exel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF186C32781
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 15:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717688842;
	bh=3xO7VaInh+fQotfOa6nN2VWv4Fm6oAb1TPT4hY/1gTU=;
	h=To:Subject:From:Date:From;
	b=TDd1exelVb47luhLwGDvuHetAv3MeUEHgYdZx7gF2yvRIQllN3xmq7bDG2Hf05Ou1
	 8HQOeDKjgE5L32hIybzR37HoeHkM0xGi+FjSXFSJXuKAp04h3XqD588gJxSpW2aWMw
	 D2xWoEKvrUkXLpRBQ6BKM9pffopHJpR9eU48BK7uk1LE9NGmVgWwEJ8vibhOt06lir
	 xNqvLJLg9wi6UjQmTdXtNDyCBYOI8nR+QG4Wjim4A8AoePHvtDBiGHCLcR3YgGNfL6
	 s/CONCtj7iPKiuB6CS6dFq6KFAcgtKzH+V/Cjd4O9Fck0/Z2KDpNNz/HnY0zznHCfP
	 /EC6WPVTsoszA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8DC8C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 15:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171768884280.12096.10580204064349453169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 365fe8adc43bfc0a64d854cec21b27ba5b1421aac780c73c7c8fe88bdcd19e15
Date: Thu, 06 Jun 2024 15:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717688842
