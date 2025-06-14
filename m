Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257BC6D17
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749920994; cv=none; b=rFH2MBpwkpRvWm/l7vYH1p9mlviA8B6c+oe0CVo4UbW2JRutOZv3bK/sJ35d+oSLKkjPVYriAgVoNf8NlV22STYzemRNb/1s180QxHttRdnddPSiBb25PLZX6dsgo2gEIWl+0w2s6otICzUC5DMriVxOsJzUJ63W3SMX5YEsdMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749920994; c=relaxed/simple;
	bh=hN6o4IZVnNvNOZNtmSTMeYFNXCDPJomye75k1pAdQGA=;
	h=To:Subject:From:Message-Id:Date; b=O9BjXgOK3AMkapug/OxGWw+xD7nznUjECcSoXaWPrOF01sJm90EZVy52vnJClbi5smi9N0KK8TDW4PqtGI3IY9h1a/iI2qtcegD1JEevVTG4T1lhViuMxkZhL3FvJ7MFp5/gU37A66R7MpUDA8E/C/TcN1+h+7F0xoRjheSwcn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPOGvwHN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPOGvwHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CAAC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749920993;
	bh=hN6o4IZVnNvNOZNtmSTMeYFNXCDPJomye75k1pAdQGA=;
	h=To:Subject:From:Date:From;
	b=SPOGvwHN0HxRmyxIkWeGh6BQKR4bwNs+kprsY/kompeSmxNOA+OqAkAZ3MLjMEG5w
	 AW1woeG5rO62Qmx2DBfKADRMJhMJZSY//SpcORg6dVaIkTKBzkhuqV3eQuANcQwdyW
	 ohM+NQIMM8Ir/RYr59nORAJE1Ogagqq9ZpEEATyoWvDShGaOTtxL79lH9HjozrNUeh
	 8fF+exAGXTOZ4kJmBegRnnqCLlUcbjLFDkbbLpNsxPfDXvmG8X6ighhfIFZLMX28On
	 /CiYyTUderzM4hPp5Con9CiVZoXfK9MRuAxXOBNxLHGvvqR3ckzi1jJNeOt7vN9koj
	 XJ71Hf3zVlklQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BEAC7114A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174992099358.10612.16168245098196826676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2b1075743812e529dee77f496961dbf57357609a64987041fb1e5e3d3cabd3c
Date: Sat, 14 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749920993
